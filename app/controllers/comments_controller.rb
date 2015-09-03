class CommentsController < ApplicationController
  before_action :authenticate_user!

  def index
    comments = 
      if params[:post_id]
        Post.find_by_id(params[:post_id]).try(:comments)
      else
        Comment.all
      end
    render json: comments, status: :ok
  end

  def show
    comment = 
    if params[:post_id]
      Post.find(params[:post_id]).comments.find(params[:id])
    else
      Comment.find(params[:id])
    end

    render json: comment, status: :ok
  end
end
