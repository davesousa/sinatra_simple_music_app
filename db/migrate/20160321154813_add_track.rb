class AddTrack < ActiveRecord::Migration
  def change
    create_table :tracks do |t|
      t.string :song_title
      t.string :author
      t.string :url
      t.timestamps :created_at
      t.timestamps :updated_at
    end
  end
end
