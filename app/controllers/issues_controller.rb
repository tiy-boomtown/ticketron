class IssuesController < ApplicationController
  def new
  end

  def create
    Issue.create(
        title:       params[:label],
        description: params[:contents],
        reporter_id: current_user.id
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

  def assign
    issue = Issue.find params[:id]
    issue.assignee_id = params[:developer_id]
    issue.save

    redirect_to "/issues/#{issue.id}"
  end

  def follow
    Follower.where(
      user_id:  current_user.id,
      issue_id: params[:id]
    ).first_or_create

    # redirect_to :back
    redirect_to "/issues/#{params[:id]}"
  end

  def unfollow
    Follower.where(
        user_id:  current_user.id,
        issue_id: params[:id]
    ).delete_all

    redirect_to "/issues/#{params[:id]}"
  end
end