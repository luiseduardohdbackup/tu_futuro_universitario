class Scholarship < ActiveRecord::Base
  has_one :user

  validates :name, :last_name, :email, :presence => true
  validates :name, :last_name, :email, :uniqueness => true
  validates :monthly_stipend_tutor, :siblings, :gpa, :numericality => true
  validates :email, :length => {:minimum => 3, :maximum => 254},
                    :format => {:with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i}
	validates_length_of :phone, :home_phone_tutor, :office_phone_tutor, :in => 7..13,
											:message => 'Introduce un telefono de 7 a 13 digitos'	
  

  has_attached_file :transcript,
                    :url => 'public/system/:class/:id/original/:filename', # where to retrieve the files
                    :path => 'public/system/:class/:attachment/:id/original/:basename.:extension' 
                    # where to save the file

  has_attached_file :recomendation,
                    :url => 'public/system/:class/:id/original/:basename.:extension'

  has_attached_file :letter,
                    :url => 'public/system/:class/:id/original/:basename.:extension'


  attr_accessor :transcript_file_name, :transcript_content_type, :transcript_file_size, :transcript_updated_at
  attr_accessor :recomendation_file_name, :recomendation_content_type, :recomendation_file_size, :recomendation_updated_at
  attr_accessor :letter_file_name, :letter_content_type, :letter_file_size, :letter_updated_at
end
