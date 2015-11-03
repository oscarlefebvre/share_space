class AddAttachmentPictureToSpaces < ActiveRecord::Migration
  def self.up
    change_table :spaces do |t|
      t.attachment :picture
    end
  end

  def self.down
    remove_attachment :spaces, :picture
  end
end
