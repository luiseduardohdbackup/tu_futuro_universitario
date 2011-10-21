class MainController < ApplicationController
  def index
  end

  def contact
  end

  def contact_send
    UserMailer.contact_form_send(params).deliver
    redirect_to root_path, :notice => "La forma de contacto ha sido enviada. Te responderemos lo mas pronto posible."
  end
end
