class CreateElps < ActiveRecord::Migration
  def change
    create_table :elps do |t|
      t.text :description
      t.string :section
      t.string :subsection
      t.text :formatstring

      t.timestamps
    end
  end
end
