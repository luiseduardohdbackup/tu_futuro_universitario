class AddTranscriptFileToScholarships < ActiveRecord::Migration
  def change
    add_column :scholarships, :transcript, :string
  end
end
