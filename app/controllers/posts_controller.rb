class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
  end

  def show
  end

  def update
  end

  def destroy
   if @post.photo? @post.photo.remove
    if @post.destroy
      redirect_to posts_path
      flash[:notice] = "Post has been removed competely"
    end
  end

  private

  def set_post
    @post = Post.find(params[:id])
  end
end
