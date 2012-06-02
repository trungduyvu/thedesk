class AddSubjectIdToTeks < ActiveRecord::Migration
  def change
    add_column :teks, :subject_id, :integer
  end
end
