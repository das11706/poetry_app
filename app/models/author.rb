# class Author < ApplicationRecord
#   has_many :lists
#   has_many :poems, through: :lists 
#   validates :name, presence: true
# end

# class Author < ApplicationRecord
#   has_many :lists
#   has_many :poems, through: :lists 
#   validates :name, presence: true
# end

class Author < ApplicationRecord
  has_many :poems
  has_many :lists, through: :poems 
  validates :name, presence: true
end