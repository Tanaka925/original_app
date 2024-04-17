class ChangeArtistIdToArtistInUsers < ActiveRecord::Migration[7.0]
  def change
    def change
      remove_foreign_key :users, :artists
      rename_column :users, :artist_id, :artist
      change_column :users, :artist, :bigint
      add_foreign_key :users, :artists, column: :artist
    end
  end
end
