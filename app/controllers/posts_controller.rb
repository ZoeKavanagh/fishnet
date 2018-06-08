class PostsController < ApplicationController
  def all
    @posts = Post.all()
  end

  def new
    Post.create(body: params[:body], user: 1)
    redirect_to '/posts'
  end
end
