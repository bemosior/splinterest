class SplintersController < ApplicationController
  def new
  end

  def create
    @splinter = Splinter.new(params.require(:splinter).permit(:title, :url, :image))

    @splinter.save
    redirect_to @splinter
  end

  def show
    @splinter = Splinter.find(params[:id]);
  end
end