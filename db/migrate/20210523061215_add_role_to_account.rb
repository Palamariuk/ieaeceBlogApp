class AddRoleToAccount < ActiveRecord::Migration[6.1]
  def change
    add_column :accounts, :role, :integer, null: false, default: 0
  end
end
