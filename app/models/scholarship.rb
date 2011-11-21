class Scholarship < ActiveRecord::Base
  has_one :user

  # validates :name, :last_name, :email, :presence => true
  # validates :name, :last_name, :email, :uniqueness => true
  # validates :monthly_stipend_tutor, :siblings, :gpa, :numericality => true
  # validates :email, :length => {:minimum => 3, :maximum => 254},
  #                   :format => {:with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i}
	# validates_length_of :phone, :home_phone_tutor, :office_phone_tutor, :in => 7..13,
	#                     :message => 'Introduce un telefono de 7 a 13 digitos'	
  
  attr_accessor :transcript
  # , :letter, :recomendation

  mount_uploader :transcript, FileUploader
  # mount_uploader :letter, FileUploader
  # mount_uploader :recomendation, FileUploader
end
