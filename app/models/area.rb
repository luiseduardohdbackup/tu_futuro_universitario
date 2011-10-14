class Area < ActiveRecord::Base
  has_many :congresses
  validates :name, :presence => true, :uniqueness => true
end
