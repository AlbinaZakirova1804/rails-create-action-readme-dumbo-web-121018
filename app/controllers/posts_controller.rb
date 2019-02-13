class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create 
    @post = Post.create!(title: params[:title], description: params[:description])
    redirect_to post_path(@post)
  end
  # add create method here

  #
end
