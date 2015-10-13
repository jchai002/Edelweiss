class AddAttachmentLinkToPictures < ActiveRecord::Migration
  def self.up
    change_table :pictures do |t|
      t.attachment :link
    end
  end

  def self.down
    remove_attachment :pictures, :link
  end
end
