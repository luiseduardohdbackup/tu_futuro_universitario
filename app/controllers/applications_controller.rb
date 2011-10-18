class ApplicationsController < ApplicationController
  load_and_authorize_resource
  def index
    @applications = Application.all
  end

  def show
    @application = Application.find(params[:id])
  end

  def new
    @application = Application.new
  end

  def create
    @application = Application.new(params[:application])
    if @application.save
      redirect_to @application, :notice => "Successfully created application."
    else
      render :action => 'new'
    end
  end

  def edit
    @application = Application.find(params[:id])
  end

  def update
    @application = Application.find(params[:id])
    if @application.update_attributes(params[:application])
      redirect_to @application, :notice  => "Successfully updated application."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @application = Application.find(params[:id])
    @application.destroy
    redirect_to applications_url, :notice => "Successfully destroyed application."
  end

  def rate
	@application = Application.find(params[:id])
	@application.rate(params[:stars], current_user)
  end
end
