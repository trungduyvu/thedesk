class Search < ActiveRecord::Base
  attr_accessible :description, :keywords

  belongs_to :teks
end
