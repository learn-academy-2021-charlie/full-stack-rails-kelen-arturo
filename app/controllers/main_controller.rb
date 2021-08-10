class MainController < ApplicationController
  def main
    @blogs = Blog.all
    render 'main.html.erb'
  end

  def show
    @blog = Blog.find(params[:id])
    render 'blog_show.html.erb'
  end

  private
  def blog_params
    params.require(:blog).permit(:title, :content)
  end
end
