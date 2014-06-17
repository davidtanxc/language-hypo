class CreateOrder < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :name
      t.string :type
      t.string :address
      t.string :number
      t.string :email
      t.string :topic
      t.datetime :start_date
      t.timestamps
    end
  end
end
