class PostsController < ApplicationController
  def all
    
  end

  def new
    Post.create(body: params[:body], user: 1)
    redirect_to '/posts'
  end
end
