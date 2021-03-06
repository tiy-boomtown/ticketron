class DevelopersController < ApplicationController
  def index
    @developers = Developer.all
  end

  def show
    @developer = Developer.find params[:id]
  end

  def new
  end

  def create
    if params[:full_name].present?
      dev = Developer.new
      dev.name = params[:full_name]
      dev.save

      redirect_to "/developers/#{dev.id}"
    else
      @error = 'No name was given!'
      render :new
    end
  end

  def remove
    dev = Developer.find params[:developer_id]
    dev.retire
    redirect_to '/developers'
  end
end