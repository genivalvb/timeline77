class RegistrosController < ApplicationController
  before_action :set_registro, only: [:new]

  def new
    @registro = Registro.new
  end
  def show
    @registro = Registro.find(params[:id])
  end
  def edit
    @registro = Registro.find(params[:id])
  end
  def index
    @registros = Registro.all
  end

  def update
    @registro = Registro.find(params[:id])
    if @registro.update(registro_params)
      redirect_to @registro, notice: 'Cadastro atualizado com sucesso'
    else
      render action: :edit
    end
  end

  def create
    @registro = Registro.new(registro_params)
    if @registro.save
      redirect_to @registro, notice: 'Cadastro criado com sucesso!'
    else
      render action: :new
    end
  end

  private
  def registro_params
    params.
      require(:registro).
      permit(:ano,:evento,:descricao)
  end

  def set_registro
    @registros = Registro.all
  end
end
