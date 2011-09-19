class AddImageToCongresses < ActiveRecord::Migration
  def change
    add_column :congresses, :image, :string
  end
end
