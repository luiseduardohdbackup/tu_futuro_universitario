class MainController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    if @contact.valid?
      UserMailer.contact_form_send(@contact).deliver
      redirect_to(root_path, :notice => "La forma de contacto ha sido enviada. Te responderemos lo mas pronto posible.")
    else
      flash.now.alert = "Por favor llena todos los campos adecuadamente."
      render :new
    end
  end
end
