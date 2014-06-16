class Instructor < ActiveRecord::Base
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  has_attached_file :second_avatar, :styles => { :medium => "50x50>", :thumb => "30x30>" }
  do_not_validate_attachment_file_type :avatar, :second_avatar
end
