class PostsController < ApplicationController
  # before_action :authenticate_user!

  def index
    posts = Post.all
    render json: posts, status: :ok
  end

  def show
    post = Post.find_by_id(params[:id])
    render json: post, status: :ok
  end
end
