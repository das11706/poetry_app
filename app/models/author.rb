class Author < ApplicationRecord
  has_many :lists
  has_many :poems, through: :lists 
  # validates :name, presence: true
end
