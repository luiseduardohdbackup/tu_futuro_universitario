class School < ActiveRecord::Base
  attr_accessible :name, :contact, :phone

	validates_presence_of 			:name
	validates_uniqueness_of 		:name, :case_sensitive => false
	validates_numericality_of 	:phone
	validates_length_of 				:phone, :in => 7..13,
															:message => 'Introduce un telefono de 7 a 13 digitos'
end
