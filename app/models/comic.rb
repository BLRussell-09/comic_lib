class Comic < ApplicationRecord
  has_and_belongs_to_many :artists
  has_and_belongs_to_many :authors
  has_and_belongs_to_many :editors
  accepts_nested_attributes_for :authors
  accepts_nested_attributes_for :artists
  accepts_nested_attributes_for :editors
end
