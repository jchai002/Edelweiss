class AddAttachmentVideoToAnnouncements < ActiveRecord::Migration
  def self.up
    change_table :announcements do |t|
      t.attachment :video
    end
  end

  def self.down
    remove_attachment :announcements, :video
  end
end
