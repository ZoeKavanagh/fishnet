class WelcomePageController < ApplicationController
  def welcome
    redirect_to posts_path if user_signed_in?
  end
end
