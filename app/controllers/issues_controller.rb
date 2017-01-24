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

  def all
    @issues = Issue.all
  end
end