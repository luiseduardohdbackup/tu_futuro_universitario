class AddRoleNameToUser < ActiveRecord::Migration
  def change
    add_column :users, :role, :string, :default => 'student'
    add_column :users, :name, :string
  end
end
