class CommentsController < ApplicationController
  before_action :set_post, only: [:create]
  before_action :set_comment, only: [:destroy]

  def create
    @comment = @post.comments.build(comment_params)
    @comment.user_id = current_user.id
  end

  def destroy
    @comment.destroy
  end


  private

    def set_post
      @post = Post.find(params[:id])
    end

    def set_comment
      @comment = Comment.find(params[:id])
    end

end
