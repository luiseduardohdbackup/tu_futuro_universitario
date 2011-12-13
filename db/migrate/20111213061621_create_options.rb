class CreateOptions < ActiveRecord::Migration
  def change
    create_table :options do |t|
      t.boolean :scholarship

      t.timestamps
    end
  end
end
