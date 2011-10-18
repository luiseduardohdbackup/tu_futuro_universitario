class Application < ActiveRecord::Base
  attr_accessible :congress_id, :title, :body, :user_id
  belongs_to :congress
  belongs_to :user

  ajaxful_rateable :stars => 5, :allow_update => true

  validates :user_id, :title, :congress_id, :body, :presence => true
end
