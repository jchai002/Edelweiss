class AddAttachmentUploadToVideos < ActiveRecord::Migration
  def self.up
    change_table :videos do |t|
      t.attachment :upload
    end
  end

  def self.down
    remove_attachment :videos, :upload
  end
end
