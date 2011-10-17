class Application < ActiveRecord::Base
  attr_accessible :congress_id, :title, :body, :user_id
  belongs_to :congress
  belongs_to :user
  
  validates :user_id, :title, :congress_id, :body, :presence => true
end
