class CreateAuthorComics < ActiveRecord::Migration[6.0]
  def change
    create_join_table :authors, :comics do |t|
      t.index :authors_id
      t.index :comics_id
  end
end
