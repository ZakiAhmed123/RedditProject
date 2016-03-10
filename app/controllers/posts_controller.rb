class PostsController < ApplicationController
  def list
    @posts=Post.all.order("view_count desc")
  end

  def view
    @post = Post.find_by id: params[:id]
    @comment = Comment.new
    @comment.post = @post

  end

def upvotes
  @post = Post.find params[:id]
    @post.update view_count: (@post.view_count + 1)
    redirect_to root_path
end

def downvotes
  @post = Post.find params[:id]
    @post.update view_count: (@post.view_count - 1)
    redirect_to root_path
  end

  def new
    @post = Post.new
  end

  def create
@post = Post.new
@post.title = params[:post][:title]
@post.user_name = params[:post][:user_name]
@post.photo_id = params[:post][:photo_id]

if @post.save
  redirect_to root_path
else
  render :new
end
  end

  def edit
  end

  def update
  end

  def delete
    @post = Post.find_by id: params[:id]
    @post.destroy
redirect_to root_path
  end

  def create_comment
    @post = Post.find_by id: params[:id]
    @comment = Comment.new

    @comment.comment_text = params[:comment][:comment_text]
    @comment.user_name = params[:comment][:user_name]

    @comment.post_id = @post.id

    if @comment.save
      redirect_to post_path(id: @post.id)
    else
      render :view
    end
  end
end
