class Search < ActiveRecord::Base
  attr_accessible :searchable_text, :grade, :subject

  belongs_to :teks
end
