class Picture < ActiveRecord::Base
  attr_accessible :description, :image, :congress_id
  belongs_to :congress
  
  validates :image, :congress_id, :presence => true

  mount_uploader :image, ImageUploader
end
