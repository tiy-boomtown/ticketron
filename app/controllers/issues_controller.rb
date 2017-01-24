class IssuesController < ApplicationController
  def new
  end

  def create
    Issue.create(
        title:       params[:label],
        description: params[:contents]
    )

    redirect_to '/'
  end
end