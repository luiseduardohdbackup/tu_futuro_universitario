class Congress < ActiveRecord::Base
  attr_accessible :start_date, :end_date, :title, :description, :image, :address, :area_id, :text_address
  attr_accessor :text_address

  has_many :pictures
  has_many :applications, :dependent => :destroy
  belongs_to :area

  validates :description, :start_date, :end_date, :presence => true
  validates :title, :presence => true, :uniqueness => true
  validates :address, :presence => true, :unless => :text_address?
  validates :text_address, :presence => true, :unless => :default_address?
  validate  :future_date?, :valid_date?

  mount_uploader :image, ImageUploader

  geocoded_by :address
  before_save :set_address, :if => :text_address?
  after_validation :geocode

  def set_address
      self.address = text_address unless default_address?
  end

  def text_address?
    self.text_address.present?
  end

  def default_address?
    self.address == 'auditorio_luis_elizondo' || self.address == 'centro_estudiantil'
  end

  def future_date?
    errors.add(:start_date, "needs to be a future date") if self.start_date < Time.now rescue false
  end

  def valid_date?
    errors.add(:start_date, "needs to be before the ending date") if self.end_date <= self.start_date rescue false
  end

  def get_google_address
    Geocoder.search("#{self.latitude}, #{self.longitude}")[0].address
  end

  def default_map
    "mapa_tec_#{self.address}.png"

  end
  def address_map
    "http://maps.google.com/maps/api/staticmap?size=600x300&sensor=false&zoom=16&markers=#{self.latitude}%2C#{self.longitude}"
  end

  def related_congresses
    Congress.joins(:area).where("areas.id = #{self.area_id}")
  end

end
