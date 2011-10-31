class UserMailer < ActionMailer::Base
  default from: "viko.nava@gmail.com"

  def new_application(application)
    @application = application
    @user = @application.user
    @host = "http://localhost:3000"
    mail(:to => @application.congress.user.email, :subject => "Nueva Aplicacion al Congreso #{@application.congress.title}")    
  end

  def contact_form_send(info)
    @info = info
    @owner = User.find_by_role("admin")
    mail(:to => @owner.email, :subject => "Mensaje de Contacto en TuFuturoUniversitario")
  end

  def scholarship_message(scholarship)
    @scholarship = scholarship
    mail(:to => @scholarship.email, :subject => "Aplicacion de una beca")
  end
end
