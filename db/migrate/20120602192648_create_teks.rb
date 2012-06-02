class CreateTeks < ActiveRecord::Migration
  def change
    create_table :teks do |t|
      t.string :section
      t.string :subsection
      t.string :subsection2
      t.string :description

      t.timestamps
    end
  end
end
