class ChangeDate < ActiveRecord::Migration
  def change
    remove_column :orders, :start_date
    add_column :orders, :start_date, :string
    add_column :orders, :start_time, :string
  end
end
