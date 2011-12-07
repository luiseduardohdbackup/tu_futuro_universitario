class AddLetterFileToScholarships < ActiveRecord::Migration
  def change
    add_column :scholarships, :letter, :string
  end
end
