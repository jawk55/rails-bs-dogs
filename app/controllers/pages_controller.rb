class PagesController < ApplicationController
  # before_action :authenticate_user!
  def home

    @a = (300/2-9*2)

    # binding.break
    var = Array.new()
    # binding.break

    # flash.now[:success] = "Su operacion fue exitosa"
    # flash.now[:notice] = "Seleccione correctamente
    # redirect_to "/pages/home"

  end
end
