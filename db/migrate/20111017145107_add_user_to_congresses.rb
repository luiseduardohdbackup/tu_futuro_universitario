class AddUserToCongresses < ActiveRecord::Migration
  def change
    add_column :congresses, :user_id, :integer
  end
end
