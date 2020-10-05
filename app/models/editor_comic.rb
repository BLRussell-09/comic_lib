class EditorComic < ApplicationRecord
  belongs_to :comic, class_name: "comic", foreign_key: "comic_id"
  belongs_to :editor, class_name: "editor", foreign_key: "editor_id"

  validates_presence_of :comic
  validates_presence_of :editor

  accepts_nested_attributes_for :editor
end
