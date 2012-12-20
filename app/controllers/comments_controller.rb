class CommentsController < ApplicationController
  def create
    # raise params.inspect
    comment = Comment.create comment_params
    comment.save

    flash[:notice] = "Successfully created comment for #{comment.author}"
    redirect_to article_path(comment.article)
  end

  def comment_params
    params[:comment].permit(:article_id, :author, :body)
  end
end
