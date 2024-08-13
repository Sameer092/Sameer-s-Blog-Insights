class BlogPostController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_blog_post , except: [:index, :new , :create]

  def index
    @blog_posts = BlogPost.all
  end

  def show
  end

  def new
    @blog_post = BlogPost.new
  end

  def create
    @blog_post = BlogPost.new(blog_params)

    if @blog_post.save
      redirect_to root_path
    else
      render :new , status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @blog_post.update(blog_params)
      redirect_to root_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @blog_post.destroy
    redirect_to root_path
  end

  private

  def blog_params
    params.require(:blog_post).permit(:title,:body)
  end

  def set_blog_post
    @blog_post = BlogPost.find(params[:id])
    rescue ActiveRecord::RecordNotFound
      redirect_to root_path
  end
end
