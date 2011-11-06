class AddRecomendationToScholarships < ActiveRecord::Migration
  def self.up
    add_column :scholarships, :recomendation_file_name,    :string
    add_column :scholarships, :recomendation_content_type, :string
    add_column :scholarships, :recomendation_file_size,    :integer
    add_column :scholarships, :recomendation_updated_at,   :datetime
  end

  def self.down
    remove_column :scholarships, :recomendation_file_name
    remove_column :scholarships, :recomendation_content_type
    remove_column :scholarships, :recomendation_file_size
    remove_column :scholarships, :recomendation_updated_at
  end
end
