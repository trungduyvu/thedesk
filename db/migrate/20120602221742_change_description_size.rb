class ChangeDescriptionSize < ActiveRecord::Migration
  def change
    change_column :teks, :description, :text, :limit => nil
  end
end
