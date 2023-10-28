class MedicosController < ApplicationController
  def new
    @medico = Medico.new
  end

  def create
    @medico = Medico.new(medico_params)
    if @medico.save
      redirect_to medico_path(@medico), notice: 'Médico cadastrado com sucesso.'
    else
      render :new
    end
  end

  def show
    @medico = Medico.find(params[:id])
  end

  def edit
    @medico = Medico.find(params[:id])
  end

  def index
    @medicos = Medico.all
  end

  def update
    @medico = Medico.find(params[:id])
    if @medico.update(medico_params)
      redirect_to medico_path(@medico), notice: 'Cadastro de médico atualizado com sucesso.'
    else
      render :edit
    end
  end

  private

  def medico_params
    params.require(:medico).permit(:nome, :especializacao, :email, :cpf, :crm)
  end
end