class HomeController < ApplicationController
  def index
    @registros = Registro.order(:ano).all

  end
end
