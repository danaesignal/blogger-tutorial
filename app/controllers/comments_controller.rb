class CommentsController < ApplicationController
  include CommentsHelper
  def create
    @comment = Comment.new(comment_params)
    @comment.article_id = params[:article_id]
    flash.notice = "Thanks for commenting, #{@comment.author_name}!"

    @comment.save

    redirect_to article_path(@comment.article)
  end
end
