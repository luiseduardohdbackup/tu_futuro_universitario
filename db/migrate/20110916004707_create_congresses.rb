class CreateCongresses < ActiveRecord::Migration
  def self.up
    create_table :congresses do |t|
      t.string :title
      t.text :description
      t.datetime :start_date
      t.datetime :end_date
      t.timestamps
    end
  end

  def self.down
    drop_table :congresses
  end
end
