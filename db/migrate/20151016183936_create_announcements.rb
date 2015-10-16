class CreateAnnouncements < ActiveRecord::Migration
  def change
    create_table :announcements do |t|
      t.string 	 :title
      t.string	 :body
      t.string 	 :picture

      t.timestamps null: false
    end
  end
end
