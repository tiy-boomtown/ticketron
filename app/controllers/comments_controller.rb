class CommentsController < ApplicationController
  def create
    Comment.create(
      contents:  params[:contents],
      poster_id: current_user.id,
      issue_id:  params[:issue_id]
    )

    redirect_to "/issues/#{params[:issue_id]}"
  end
end