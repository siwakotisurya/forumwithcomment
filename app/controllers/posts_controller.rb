class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
   @post =Post.new
  end

  def create
  @post = Post.new(set_db)
  if @post.save
  redirect_to(:action => 'index')
  end
  end

  def edit
  @post = Post.find(params[:id])

  end

  def update
  @post = Post.find(params[:id])
  @post.update(set_db)
  if  @post.save
  redirect_to(:action => "index")
  else
    puts "User Could Not Updated"
  end
  end

  def delete
  end

  def destroy
    @post =  Post.find(params[:id])
    if @post.destroy
redirect_to(:action => "index")
end
  end

  private 
  def set_db
    params.require(:post).permit(:topic, :user_name, :user_post)
  end
  end
