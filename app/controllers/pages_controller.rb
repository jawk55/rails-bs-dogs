class PagesController < ApplicationController
  # before_action :authenticate_user!
  def home
    @a = 3
    flash[:success] = "msg."
  end
end
