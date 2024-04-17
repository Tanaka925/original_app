class CreateArtArtists < ActiveRecord::Migration[7.0]
  def change
    create_table :art_artists do |t|
      
      t.timestamps
    end
  end
end
