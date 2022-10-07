class PagesController < ApplicationController
  # before_action :authenticate_user!
  def home
    @a = 3
    # binding.break
    flash[:success] = "msg."
    flash[:notice] = "Post successfully created"
    # redirect_to "/pages/home"

  end
end
