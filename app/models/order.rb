class Order < ActiveRecord::Base
  validates :name, :class_type, :address, :number, :email, :start_date, :start_time, :topic, presence: true
end
