class UsersController < ApplicationController
  load_and_authorize_resource

  def index
      @users = User.all
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(params[:user])
      redirect_to users_path, :notice  => "Successfully updated user."
    else
      render :action => 'edit'
    end

  end

  def show
    @user = User.find(params[:id])
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_url, :notice => "Successfully destroyed user."
  end

  def congresses
    @user = User.find(params[:id])
    @congresses = @user.congresses
  end

end
