class CreateAuthorComics < ActiveRecord::Migration[6.0]
  def change
    create_table :author_comics do |t|

      t.integer :comic_id
      t.integer :author_id

      t.timestamps
    end
  end
end
