class CreateArtArtists < ActiveRecord::Migration[7.0]
  def change
    create_table :art_artists do |t|
      t.references  :artist,        null: false, foreign_key: true
      t.references  :art   ,        null: false, foreign_key: true
      t.timestamps
    end
  end
end
