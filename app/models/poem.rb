class Poem < ApplicationRecord
  has_many :lists
  has_many :authors, through: :lists
  # validates :author_name, presence: true
  # accepts_nested_attributes_for :lists

  def lists_attributes=(lists_attributes)
    # raise poems_attributes.inspect
    lists_attributes.values.each do |list_attributes|
      self.lists.build(list_attributes)
    end
  end
  
end
