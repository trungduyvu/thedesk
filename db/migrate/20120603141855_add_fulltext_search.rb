class AddFulltextSearch < ActiveRecord::Migration
  def self.up
    ActiveRecord::Base.connection.execute<<-SQL
    CREATE VIEW searches AS
      SELECT teks.id AS teks_id, teks.description AS teks_description, keywords.name AS teks_keyword
      FROM teks inner join keywords on teks.id = keywords.teks_id
    SQL

  end

  def self.down
    ActiveRecord::Base.connection.execute<<-SQL
    DROP VIEW searches
    SQL
  end
end
