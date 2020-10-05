class CreateEditorComics < ActiveRecord::Migration[6.0]
  def change
    create_table :editor_comics do |t|

      t.integer :comic_id
      t.integer :editor_id

      t.timestamps
    end
  end
end
