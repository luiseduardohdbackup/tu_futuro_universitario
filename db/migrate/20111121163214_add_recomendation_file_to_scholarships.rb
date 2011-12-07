class AddRecomendationFileToScholarships < ActiveRecord::Migration
  def change
    add_column :scholarships, :recomendation, :string
  end
end
