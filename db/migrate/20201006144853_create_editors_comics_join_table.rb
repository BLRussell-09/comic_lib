class CreateEditorsComicsJoinTable < ActiveRecord::Migration[6.0]
  def change
    create_join_table :editors, :comics do |t|
      # t.index [:editor_id, :comic_id]
      # t.index [:comic_id, :editor_id]
    end
  end
end
