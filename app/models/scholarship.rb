class Scholarship < ActiveRecord::Base
  has_one :user

  has_attached_file :transcript
  has_attached_file :recomendation
  has_attached_file :letter

  attr_accessor :transcript_file_name, :transcript_content_type, :transcript_file_size, :transcript_updated_at
  attr_accessor :recomendation_file_name, :recomendation_content_type, :recomendation_file_size, :recomendation_updated_at
  attr_accessor :letter_file_name, :letter_content_type, :letter_file_size, :letter_updated_at
end
