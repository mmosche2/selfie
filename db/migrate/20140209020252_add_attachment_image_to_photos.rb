class AddAttachmentImageToPhotos < ActiveRecord::Migration
  def self.up
    change_table :photos do |t|
      remove_column :photos, :image
      t.attachment :image
    end
  end

  def self.down
    drop_attached_file :photos, :image
    add_column :photos, :image, :string
  end
end
