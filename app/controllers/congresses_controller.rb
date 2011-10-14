class CongressesController < ApplicationController
  before_filter :areas, :only=>[:new,:edit,:create,:update]
  # load_and_authorize_resource
  def index
    @congresses = Congress.all
  end

  def show
    @picture = Picture.new
    @congress = Congress.find(params[:id])
  end

  def new
    @congress = Congress.new
  end

  def create
    @congress = Congress.new(params[:congress])
    if @congress.save
      redirect_to @congress, :notice => "Successfully created congress."
    else
      render :action => 'new'
    end
  end

  def edit
    @congress = Congress.find(params[:id])
  end

  def update
    @congress = Congress.find(params[:id])
    if @congress.update_attributes(params[:congress])
      redirect_to @congress, :notice  => "Successfully updated congress."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @congress = Congress.find(params[:id])
    @congress.destroy
    redirect_to congresses_url, :notice => "Successfully destroyed congress."
  end

  def applications
    @congress = Congress.find(params[:id])
    @applications = @congress.applications
  end

  private
  def areas
    @areas = Area.all
  end

end
