class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :album_title
      t.integer :user_id
      t.string :slug
      t.timestamps
    end
     add_index :albums, :slug, unique: true
  end
end
