namespace :db do
  desc "Erase and fill database"
  task :populate => :environment do
    require 'populator'
    
    [School].each(&:delete_all)
    
    School.populate 100 do |school|
      school.name = Populator.words(1..3).titleize
      school.contact = Populator.words(3).titleize
      school.phone = 1000000..9999999999999
    end
  end
end
