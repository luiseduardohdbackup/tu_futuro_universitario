class Option < ActiveRecord::Base
  def self.scholarships_enabled?
    Option.first.scholarship
  end
end
