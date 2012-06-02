class AddGradeIdToTeks < ActiveRecord::Migration
  def change
    add_column :teks, :grade_id, :integer
  end
end
