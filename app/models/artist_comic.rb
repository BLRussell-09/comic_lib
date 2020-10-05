class ArtistComic < ApplicationRecord
  belongs_to :comic, class_name: "comic", foreign_key: "comic_id"
  belongs_to :artist, class_name: "artist", foreign_key: "artist_id"

  validates_presence_of :comic
  validates_presence_of :artist

  accepts_nested_attributes_for :artist
end
