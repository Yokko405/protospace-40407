class CommentsController < ApplicationController

  def create
    @comment = Comment.new(comment_params)
    @prototype = Prototype.find(params[:prototype_id])
    @comments = @prototype.comments

    if @comment.save
      redirect_to prototype_path(@comment.prototype_id)
    else
      #保存できないときは、今の画面に留まる
      render 'prototypes/show', locals: { prototype: @prototype, comments: @comments }, status: :unprocessable_entity
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:content).merge(user_id: current_user.id, prototype_id: params[:prototype_id])
  end
end
