class DevelopersController < ApplicationController
  def index
    @developers = Developer.all
  end

  def show
    @devloper = Developer.find params[:id]
  end

  def new
  end

  def create
    if params[:name]
      dev = Developer.new
      dev.name = params[:name]
      dev.save

      redirect_to "/developers/#{dev.id}"
    else
      @error = 'No name was given!'
      render :new
    end
  end

  def remove
    dev = Developer.find params[:id]
    dev.retire
    redirect_to '/developers'
  end
end