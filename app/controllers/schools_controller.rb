class SchoolsController < ApplicationController
  load_and_authorize_resource

  def index
    #@school = School.page(params[:page]).per(50)
    @school = School.where("name LIKE ? or contact LIKE ?", "%#{params[:q]}%", "%#{params[:q]}%")

    @school_names = Array.new
    @contact_names = Array.new
    School.all.each do |school|
      @school_names.push(school.name) if !@school_names.include? school.name
      @contact_names.push(school.contact) if !@contact_names.include? school.contact
    end

    @school = @school.page(params[:page]).per(10)
    respond_to do |format|
      format.html # index.html.erb
      format.js 
      format.json { render :json => @school.map(&:attributes) }
      format.xml  { render :xml => @school }
    end
  end

  def more_schools
    @school = School.where("name LIKE ? or contact LIKE ?", "%#{params[:q]}%", "%#{params[:q]}%").page(params[:page]).per(10)
    render :layout => false
  end

  def show
    @school = School.find(params[:id])
  end

  def new
    @school = School.new
  end

  def create
    @school = School.new(params[:school])
    if @school.save
      redirect_to @school, :notice => "Successfully created school."
    else
      render :action => 'new'
    end
  end

  def edit
    @school = School.find(params[:id])
  end

  def update
    @school = School.find(params[:id])
    if @school.update_attributes(params[:school])
      redirect_to @school, :notice  => "Successfully updated school."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @school = School.find(params[:id])
    @school.destroy
    redirect_to schools_url, :notice => "Successfully destroyed school."
  end
end
