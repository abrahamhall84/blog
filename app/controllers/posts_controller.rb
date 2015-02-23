class PostsController < ApplicationController
  def index
    @blogger = Blogger.find params[:blogger_id]
    @posts = @blogger.posts
  end

  def new
    @blogger = Blogger.find params[:blogger_id]
    @post = Post.new
  end

  def show
    @post = Post.find params[:id]
    @blogger = @post.blogger
  end

  def create
    @blogger = Blogger.find params[:blogger_id]
    @post = Post.new post_params
    @post.blogger = @blogger
    if @post.save
      redirect_to blogger_posts_path(@blogger)
    else
      render :new
    end
  end

  def edit
    @post = Post.find params[:id]
    @blogger = @post.blogger
  end

  def update 
    @post = Post.find params[:id]
    @post.update_attributes post_params
    @blogger = @post.blogger
    if @post.save
      redirect_to post_path(@post)
    else
      render :edit
    end
  end

  def destroy
    post = Post.find params[:id]
    post.destroy
    redirect_to blogger_posts_path(post.blogger)
  end

  private
  def post_params
    params.require(:post).permit(:title, :body, :category, :blogger_id)
  end

end
