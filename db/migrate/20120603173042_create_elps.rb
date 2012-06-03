class CreateElps < ActiveRecord::Migration
  def up
    create_table :elps do |t|
      t.text :description
      t.string :section
      t.string :subsection
      t.text :formatstring

      t.timestamps
    end
  end
  def down
  	drop_table :elps
  end
end
