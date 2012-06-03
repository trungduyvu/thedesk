class AddFulltextSearch < ActiveRecord::Migration
  def self.up
    ActiveRecord::Base.connection.execute<<-SQL
    CREATE VIEW searches AS
      SELECT teks.id AS teks_id, teks.description AS teks_description,'' AS teks_keyword
      FROM teks
    SQL

  end

  def self.down
    ActiveRecord::Base.connection.execute<<-SQL
    DROP VIEW searches
    SQL
  end
end
