class UserMailer < ActionMailer::Base
  default from: "contacto@tufuturouniversitario.com"

  def new_application(application)
    @application = application
    @user = @application.user
    mail(:to => @application.congress.user.email, :subject => "Nueva Aplicacion al Congreso #{@application.congress.title}")    
  end

  def contact_form_send(info)
    @info = info
    @owner = User.find_by_role("super_admin")
    mail(:to => @owner.email, :subject => "Mensaje de Contacto en TuFuturoUniversitario")
  end

  def scholarship_message(scholarship)
    @scholarship = scholarship
    mail(:to => @scholarship.email, :subject => "Aplicacion de una beca")
  end

  def scholarship_application(scholarship)
    @scholarship = scholarship
    mail(:to => User.find_by_role("admin"), :subject => "Aplicaron a una nueva beca en 'Tu Futuro Universitario'")
  end
end
