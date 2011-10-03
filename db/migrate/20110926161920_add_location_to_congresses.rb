class AddLocationToCongresses < ActiveRecord::Migration
  def change
    add_column :congresses, :address, :string
    add_column :congresses, :latitude, :float
    add_column :congresses, :longitude, :float
  end
end
