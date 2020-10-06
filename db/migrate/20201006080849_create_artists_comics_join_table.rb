class CreateArtistsComicsJoinTable < ActiveRecord::Migration[6.0]
  def change
    create_join_table :artists, :comics do |t|
      # t.index [:artist_id, :comic_id]
      # t.index [:comic_id, :artist_id]
    end
  end
end
