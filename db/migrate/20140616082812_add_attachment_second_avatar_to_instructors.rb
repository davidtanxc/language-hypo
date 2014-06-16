class AddAttachmentSecondAvatarToInstructors < ActiveRecord::Migration
  def self.up
    change_table :instructors do |t|
      t.attachment :second_avatar
      t.string :subtitle 
    end
  end

  def self.down
    drop_attached_file :instructors, :second_avatar
    drop_column :instructors, :subtitle
  end
end
