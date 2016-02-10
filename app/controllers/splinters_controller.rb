class SplintersController < ApplicationController
  def new
  end

  def create
    @splinter = Splinter.new(params[:splinter])

    @splinter.save
    redirect_to @splinter
  end
end