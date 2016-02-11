class SplintersController < ApplicationController
  def new
    @splinter = Splinter.new
  end

  def create
    @splinter = Splinter.new(params.require(:splinter).permit(:title, :url, :image))

    @splinter.save
    redirect_to @splinter
  end

  def edit
    @splinter = Splinter.find(params[:id])
  end

  def show
    @splinter = Splinter.find(params[:id])
  end

  def index
    @splinters = Splinter.all
  end
end