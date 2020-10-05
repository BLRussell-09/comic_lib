class CreateArtistComics < ActiveRecord::Migration[6.0]
  def change
    create_table :artist_comics do |t|

      t.integer :comic_id
      t.integer :artist_id

      t.timestamps
    end
  end
end
