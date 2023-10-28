class ConsultasController < ApplicationController
  def index
    @consultas = Consulta.all
  end

  def new
    @consulta = Consulta.new
  end

  def create
    @consulta = Consulta.new(consulta_params)
    if @consulta.save
      redirect_to consultas_path, notice: 'Consulta agendada com sucesso.'
    else
      render :new
    end
  end
end