class CreateSearches < ActiveRecord::Migration
  def up
    create_table :searches do |t|
      t.integer :teks_id
      t.text :description
      t.text :keywords

      t.timestamps
    end

    if Rails.env.production?
      execute <<-SQL
        create index searches_description on Searches using gin(to_tsvector('english', description));
        create index searches_keywords on Searches using gin(to_tsvector('english', keywords));
      SQL
    end

    Teks.all.each do |t|
         s = t.build_search
         s.description = t.description
         s.keywords = t.keywords.map { |k| k.name }.join(' ')
         s.save!
       end
  end
  def down
    drop_table :searches
  end
end
