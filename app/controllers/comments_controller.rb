class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to art_path(@comment.art_id), notice: 'コメントが正常に投稿されました。'
    else
      redirect_to art_path(@comment.art_id), alert: 'コメントの投稿に失敗しました。'
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:content).merge(user_id: current_user.id, art_id: params[:art_id])
  end
end
