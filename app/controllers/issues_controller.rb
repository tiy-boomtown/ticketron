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
    if params[:closed]
      @issues = Issue.where(status: "closed")
    else
      @issues = Issue.all
    end
  end

  def show
    @issue = Issue.find params[:id]
  end
end