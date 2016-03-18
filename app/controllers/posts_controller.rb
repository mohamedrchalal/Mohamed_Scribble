class PostsController < ApplicationController
  # index
  def index
    @posts = Post.all
    @comments = Comment.all
  end

  # new
  def new
    @post = Post.new
  end

  # create
  def create
    @post = Post.create!(post_params)

    redirect_to "/posts/#{@post.id}"
  end

  #show
  def show
    @post = Post.find(params[:id])

  end

  # edit
  def edit
    @post = Post.find(params[:id])
  end


  # update
  def update
    @post = Post.find(params[:id])
    @post.update(post_params)

    redirect_to "/posts/#{@post.id}"
  end

  # destroy
  def destroy
    @post = Post.find(params[:id])
    @post.destroy

    redirect_to "/posts/:posts_id"
  end

  private
  def post_params
    params.require(:post).permit(:title, :name, :content, :user_name)
  end
end
