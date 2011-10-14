# encoding: utf-8
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

    # unless Area.count.zero?
      areas = ["Agricultura y Alimentos", "Arquitectura", "Ciencias Sociales y Humanidades", "Comunicación y Periodismo", "Derecho", "Diseño y Arte aplicado", "Ingeniería y Ciencias", "Negocios y Administración", "Salud", "Tecnologías de Información y Electrónica", "Concentraciones"]
      areas.each {|area| Area.create(:name => area)}
    # end

    areas_ids = Area.all.map(&:id)
    Congress.populate 15 do |congress|
      congress.title = Populator.words(4).capitalize
      congress.description = Populator.paragraphs(3)
      congress.start_date = Time.now + rand(10).to_i.days
      congress.end_date = congress.start_date + rand(10).to_i.days
      congress.area_id =  areas_ids.sample
      congress.address = 'auditorio_luis_elizondo'
    end

    congresses_ids = Congress.all.map(&:id)
    Application.populate 10 do |application|
      application.title = Populator.words(3)
      application.body = Populator.paragraphs(3)
      application.congress_id = congresses_ids.sample
    end
  end
end
