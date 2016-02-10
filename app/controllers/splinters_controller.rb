class SplintersController < ApplicationController
  def new
  end

  def create
    render plain: params[:splinter].inspect
  end
end
