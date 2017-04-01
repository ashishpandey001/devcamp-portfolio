# Add role column to users table.
class AddRolesToUsers < ActiveRecord::Migration
  def change
    add_column :users, :roles, :string
  end
end
