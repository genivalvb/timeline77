class EventosController < ApplicationController
  before_action :set_registro, only: [:new, :show, :edit, :update]

  def new
    @evento = Evento.new
  end
  def show
    @evento = Evento.find(params[:id])
  end
  def edit
    @evento = Evento.find(params[:id])
  end
  def index
    @eventos = Evento.all
  end

  def update
    @evento = Evento.find(params[:id])
    if @evento.update(evento_params)
      redirect_to @evento, notice: 'Cadastro atualizado com sucesso'
    else
      render action: :edit
    end
  end

  def create
    @evento = Evento.new(evento_params)
    if @evento.save
      redirect_to @evento, notice: 'Cadastro criado com sucesso!'
    else
      render action: :new
    end
  end

  private
  def evento_params
    params.
      require(:evento).
      permit(:titulo,:descricao, :registro_id)
  end

  def set_registro
    @registros = Registro.all
  end
end
