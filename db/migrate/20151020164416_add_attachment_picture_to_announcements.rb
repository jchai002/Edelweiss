class AddAttachmentPictureToAnnouncements < ActiveRecord::Migration
  def self.up
    change_table :announcements do |t|
      t.attachment :picture
    end
  end

  def self.down
    remove_attachment :announcements, :picture
  end
end
