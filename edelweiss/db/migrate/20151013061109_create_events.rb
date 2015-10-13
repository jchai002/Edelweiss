class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string 	 :title
      t.string	 :body
      t.string 	 :picture

      t.timestamps null: false
    end
  end
end
