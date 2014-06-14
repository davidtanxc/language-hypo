class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :full_name
      t.string :email
      t.string :phone_number
      t.string :topic
      t.string :class_type
      t.timestamps
    end
  end
end


