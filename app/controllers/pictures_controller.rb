class PicturesController < ApplicationController
  def create
    @picture = Picture.new(params[:picture])
    if @picture.save
      redirect_to @picture.congress, :notice => "Picture added Successfully"
    end
  end

end
