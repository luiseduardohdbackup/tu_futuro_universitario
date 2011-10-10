class AddAreaToCongresses < ActiveRecord::Migration
  def change
    add_column :congresses, :area_id, :integer
  end
end
