class Author < ApplicationRecord
  has_many :author_comics, inverse_of: :author
  has_many :comics, through: :author_comics
end
