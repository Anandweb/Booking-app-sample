class AddAttachmentImageToHotels < ActiveRecord::Migration
  def self.up
    change_table :hotels do |t|
      t.attachment :image
    end
  end

  def self.down
    drop_attached_file :hotels, :image
  end
end
