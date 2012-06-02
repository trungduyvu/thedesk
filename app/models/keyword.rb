class Keyword < ActiveRecord::Base
  attr_accessible :name

  belongs_to :teks
end
