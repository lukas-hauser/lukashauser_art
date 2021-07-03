class BlogpostsController < ApplicationController
  def show
    @blogpost = Blogpost.find(params[:id])
  end

  def index
    @blogposts = Blogpost.all
  end
end
