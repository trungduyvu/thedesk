class Teks < ActiveRecord::Base
  attr_accessible :description, :section, :subsection, :subsection2

  belongs_to :subject

  has_many :keywords

  belongs_to :grade

  has_one :search
end
