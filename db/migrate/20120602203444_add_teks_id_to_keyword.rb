class AddTeksIdToKeyword < ActiveRecord::Migration
  def change
    add_column :keywords, :teks_id, :integer
  end
end
