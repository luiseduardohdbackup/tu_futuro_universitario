class AddTranscriptToScholarships < ActiveRecord::Migration
  def self.up
    add_column :scholarships, :transcript_file_name,    :string
    add_column :scholarships, :transcript_content_type, :string
    add_column :scholarships, :transcript_file_size,    :integer
    add_column :scholarships, :transcript_updated_at,   :datetime
  end

  def self.down
    remove_column :scholarships, :transcript_file_name
    remove_column :scholarships, :transcript_content_type
    remove_column :scholarships, :transcript_file_size
    remove_column :scholarships, :transcript_updated_at
  end
end
