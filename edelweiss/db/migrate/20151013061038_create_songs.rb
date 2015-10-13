class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string   :title
      t.string	 :lyric
      t.references :album
      t.timestamps null: false
    end
  end
end
