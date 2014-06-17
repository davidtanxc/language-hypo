class ChangeColumnName < ActiveRecord::Migration
  def change
    remove_column :orders, :type
    add_column :orders, :class_type, :string
  end
end
