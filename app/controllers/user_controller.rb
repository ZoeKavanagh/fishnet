class UserController < ApplicationController
  def new
    @user_new = User.new
  end

end
