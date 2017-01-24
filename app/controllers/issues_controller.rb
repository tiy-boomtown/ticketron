class IssuesController < ApplicationController
  def new
  end

  def create
    Issue.create(
        title:       'Title',
        description: 'Desc'
    )

    redirect_to '/'
  end
end