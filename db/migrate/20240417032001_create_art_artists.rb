class CreateArtArtists < ActiveRecord::Migration[7.0]
  def change
    drop_table :art_artists, if_exists: true
  end
end