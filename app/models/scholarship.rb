class Scholarship < ActiveRecord::Base
  has_one :user
  belongs_to :school
  
  validates :name, :last_name, :email, :phone, :presence => true
  validates :monthly_stipend_tutor, :siblings, :gpa, :allow_blank => true, :numericality => true
  validates :email,:allow_blank => true, :length => {:minimum => 3, :maximum => 254}, :format => {:with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i}
  validates_length_of :phone, :home_phone_tutor, :office_phone_tutor, :allow_blank => true,  :in => 7..13,
                      :message => 'Introduce un telefono de 7 a 13 digitos'	
  
  attr_accessor :transcript,:letter, :recomendation

  mount_uploader :transcript, FileUploader
  mount_uploader :letter, FileUploader
  mount_uploader :recomendation, FileUploader
end
