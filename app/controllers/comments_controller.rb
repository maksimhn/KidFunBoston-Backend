#
class CommentsController < ApplicationController
  def create
    activity = Activity.find(params[:activity_id])
    comment = Comment.new(comment_params)
    current_user.comments << comment
    activity.comments << comment
    if comment.save
      render json: comment
    else
      render json: { error: 'Comment could not be created.' }, status: 422
    end
  end

  private

  def comment_params
    params.require(:comment).permit([
      :title,
      :body,
      :rating])
  end
end
