module ApplicationHelper
  def set_if_current(controlador,accion = "")
      "activo" if controlador == params[:controller] and accion.present? ? accion == params[:action] : true
  end
end
