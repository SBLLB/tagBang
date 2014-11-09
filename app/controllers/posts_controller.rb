class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new

  end

  def create
    @post = params[:post]
    redirect_to posts_path
  end

  def post_params
    params.require(:post).permit(:image)
  end
end
