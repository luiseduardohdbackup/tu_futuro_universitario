class Application < ActiveRecord::Base
  attr_accessible :congress_id, :title, :body
  belongs_to :congress
  
  validates :title, :congress_id, :body, :presence => true
end
