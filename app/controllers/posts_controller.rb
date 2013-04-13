class PostsController < ApplicationController
  before_filter :authenticate_user!, :only => [:create, :new]

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:post_id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(params[:post])
    @post.user = current_user
    if @post.save
      redirect_to show_post_path(@post)
    else
      render :action => :new
    end
  end

  def edit
    @post = Post.find(params[:post_id])
  end

  def update
    @post = Post.find(params[:post_id])
    if @post.update_attributes(params[:post])
      redirect_to show_post_path(@post)
    else
      render :action => :edit
    end
  end
end
