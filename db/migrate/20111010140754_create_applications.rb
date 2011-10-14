class CreateApplications < ActiveRecord::Migration
  def self.up
    create_table :applications do |t|
      t.integer :congress_id
      t.string :title
      t.text :body
      t.timestamps
    end
  end

  def self.down
    drop_table :applications
  end
end
