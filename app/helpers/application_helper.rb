module ApplicationHelper
  def set_if_current(controlador,accion = "")
      "activo" if controlador == params[:controller] and accion.present? ? accion == params[:action] : true
  end
  def notice_trans(jQ)
      jQ.to_s == "alert" ? "alert-message error" : "alert-message success"
  end
end
