class Congress < ActiveRecord::Base
  attr_accessible :start_date, :end_date, :title, :description, :image

  validates :description, :start_date, :end_date, :presence => true
  validates :title, :presence => true, :uniqueness => true
  validate  :future_date?, :valid_date?
  mount_uploader :image, ImageUploader

  def future_date?
    errors.add(:start_date, "needs to be a future date") if self.start_date < Time.now rescue false
  end

  def valid_date?
    errors.add(:start_date, "needs to be before the ending date") if self.end_date <= self.start_date rescue false
  end

end
