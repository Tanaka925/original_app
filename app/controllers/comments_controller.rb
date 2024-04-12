class CommentsController < ApplicationController
  def create
    @comment = Comment.create(comment_params)
    redirect_to art_path(art.id)
  end

  private

  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, art_id: params[:art_id])
  end
end
