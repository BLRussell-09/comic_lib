class Artist < ApplicationRecord
  has_many :artist_comics, inverse_of: :artist
  has_many :comics, through: :artist_comics
end
