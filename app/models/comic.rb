class Comic < ApplicationRecord
  has_many :artist_comics, inverse_of: :comic
  has_many :artists, through: :artist_comics
  accepts_nested_attributes_for :artists_comics

  has_many :author_comics, inverse_of: :comic
  has_many :authors, through: :author_comics
  accepts_nested_attributes_for :author_comics

  has_many :editor_comics, inverse_of: :comic
  has_many :editors, through: :editor_comics
  accepts_nested_attributes_for :editor_comics
end
