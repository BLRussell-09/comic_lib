class Editor < ApplicationRecord
  has_many :editor_comics, inverse_of: :editor
  has_many :comics, through: :editor_comics
end
