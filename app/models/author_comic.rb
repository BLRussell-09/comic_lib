class AuthorComic < ApplicationRecord
  belongs_to :comic, class_name: "comic", foreign_key: "comic_id"
  belongs_to :author, class_name: "author", foreign_key: "author_id"

  validates_presence_of :comic, on: :create, message: "can't be blank"
  validates_presence_of :author, on: :create, message: "can't be blank"

  accepts_nested_attributes_for :author
end
