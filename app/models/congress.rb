class Congress < ActiveRecord::Base
  attr_accessible :start_date, :end_date, :title, :description, :image, :address

  has_many :pictures
  has_many :applications, :dependent => :destroy

  validates :description, :start_date, :end_date, :presence => true
  validates :title, :presence => true, :uniqueness => true
  validate  :future_date?, :valid_date?

  mount_uploader :image, ImageUploader

  geocoded_by :address
  after_validation :geocode, :if => :address_changed?

  def future_date?
    errors.add(:start_date, "needs to be a future date") if self.start_date < Time.now rescue false
  end

  def valid_date?
    errors.add(:start_date, "needs to be before the ending date") if self.end_date <= self.start_date rescue false
  end

  def get_google_address
    Geocoder.search("#{self.latitude}, #{self.longitude}")[0].address
  end
  def address_map
    "http://maps.google.com/maps/api/staticmap?size=600x300&sensor=false&zoom=16&markers=#{self.latitude}%2C#{self.longitude}"
  end

end
