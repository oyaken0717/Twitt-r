class BlogsController < ApplicationController
  before_action :set_blog, only: [:show, :edit, :update, :destroy]
  def index
    @blogs = Tweet.all
  end

  def new
    if params[:back]
      @blog = Tweet.new(blog_params)
    else
      @blog = Tweet.new
    end
  end
    
  def create
    @blog = Tweet.new(blog_params)
    if @blog.save
      redirect_to blogs_path, notice: "投稿しました！"
    else
      render 'new'
    end
  end
    
  def show
    @blog = Tweet.find(params[:id])
  end
    
  def edit
    @blog = Tweet.find(params[:id])
  end
    
  def update
    @blog = Tweet.find(params[:id])
    if @blog.update(blog_params)
      redirect_to blogs_path, notice: "編集しました！"
    else
      render 'edit'
    end
  end
    
  def destroy
    @blog.destroy
    redirect_to blogs_path, notice:"削除しました！"
  end
    
  def confirm
    @blog = Tweet.new(blog_params)
    render :new if @blog.invalid?
  end
    

  private
    
  def blog_params
    params.require(:tweet).permit(:content)
  end
      
  def set_blog
    @blog = Tweet.find(params[:id])
  end
      
end
