class List < ApplicationRecord
  belongs_to :author
  belongs_to :poem
  # validates :owner_name, presence: true
  # accepts_nested_attributes_for :poems

  # def poems_attributes=(poems_attributes)
  #   # raise poems_attributes.inspect
  #   poems_attributes.values.each do |poem_attributes|
  #     self.poems.build(poem_attributes)
  #   end
  # end
end

  