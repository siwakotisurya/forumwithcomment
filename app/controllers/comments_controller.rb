class CommentsController < ApplicationController
  
  def index
@post = Post.find(params[:post_id])#finds a parameter 
@comments =  @post.comments 
=begin
find the above id comment in comment table
=end
  end

  def show
  end

  def create
@post = find_post_parmas
@comment = @post.comments.new(set_db)
@comment.save
  end

  def new

  end

  def edit
@post = find_post_parmas
@comment = @post.comments.find(params[:id])
  end

  def update
@post = find_post_parmas
@comment = @post.comments.find(params[:id])
@comment.update_attributes(set_db)
  end

  def delete
  end

  def destroy
  end

  private
  def set_db
params.require(:comment).permit(:user_name, :user_comment)
  end

  def find_post_parmas
Post.find(params[:post_id])
  end

end
