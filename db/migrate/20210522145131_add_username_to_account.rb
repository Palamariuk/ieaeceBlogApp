class AddUsernameToAccount < ActiveRecord::Migration[6.1]
  def change
    add_column :accounts, :username, :string
  end
end
