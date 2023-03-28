class PostsController < ApplicationController
  def index
    posts = Post.all
    render json: posts
  end

  def show
    post = Post.find(params[:id])
    render json: post
  end

  def create
    post = Post.create(find_post)
    render json: post
  end

  def update
    post = Post.find(params[:id])
    post.update(find_post)
    render json: post
  end

  def destroy
    post = Post.find(params[:id])
    post.destroy
    head :no_content
  end

  private

  def find_post
    params.permit(:title, :description)
  end
end
