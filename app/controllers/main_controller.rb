class MainController < ApplicationController
  def main
    @blogs = Blog.all
    render 'main.html.erb'
  end

  def show
    @blog = Blog.find(params[:id])
    render 'blog_show.html.erb'
  end

  def new
    @blog = Blog.new
  end

  def create
      @blog = Blog.create(blog_params)
      if @blog.valid?
        redirect_to '/'
      else
        redirect_to '/blogs/new'
      end
  end

  def destroy
    @blog = Blog.find(params[:id])
    @blog.destroy
    redirect_to '/'
  end

  def edit
    @blog = Blog.find(params[:id])
  end

  def update
    @blog = Blog.find(params[:id])
    @blog.update(blog_params)
  end

  private
  def blog_params
    params.require(:blog).permit(:title, :content)
  end

end
