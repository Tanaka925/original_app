class CreateArts < ActiveRecord::Migration[7.0]
  def change
    create_table :arts do |t|
      t.string      :art_name,      null: false
      t.integer     :artist_id,     null: false
      t.integer     :work_id,       null: false
      t.text        :story
      t.references  :user,          null: false, foreign_key: true
      t.timestamps
    end
  end
end
