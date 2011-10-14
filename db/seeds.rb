# encoding: utf-8
if Area.count == 0
  areas = ["Agricultura y Alimentos", "Arquitectura", "Ciencias Sociales y Humanidades", "Comunicación y Periodismo", "Derecho", "Diseño y Arte aplicado", "Ingeniería y Ciencias", "Negocios y Administración", "Salud", "Tecnologías de Información y Electrónica", "Concentraciones"]
  areas.each {|area| Area.create(:name => area)}
end
