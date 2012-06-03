class CreateSearches < ActiveRecord::Migration
  def up
    create_table :searches do |t|
      t.integer :teks_id
      t.text :searchable_text
      t.string :subject
      t.string :grade

      t.timestamps
    end

    if Rails.env.production?
      execute <<-SQL
        create index searches_teks on Searches using gin(to_tsvector('english', searchable_text));
        create index searches_subject on Searches using gin(to_tsvector('english', subject));
        create index searches_grade on Searches using gin(to_tsvector('english', grade));
      SQL
    end

    Teks.all.each do |t|
         s = t.build_search
         s.searchable_text = "#{t.description} #{t.keywords.map { |k| k.name }.join(' ')}"
         s.grade = t.grade.name
         s.subject = t.subject.name
         s.save!
       end
  end
  def down
    drop_index searches_teks
    drop_index searches_subject
    drop_index searches_grade
    drop_table :searches
  end
end
