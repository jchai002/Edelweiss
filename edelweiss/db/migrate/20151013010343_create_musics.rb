class CreateMusics < ActiveRecord::Migration
  def change
    create_table :musics do |t|
      t.string   :code

      t.timestamps null: false
    end
  end
end
