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
  end

  private

  def set_restaurant
    @post = Post.find(params[:id])
  end
end
