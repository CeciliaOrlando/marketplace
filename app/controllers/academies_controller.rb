class AcademiesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show] # esto me deja afuera de la autenticacion a las acciones index y show de este controlador

  # por convencion esta accion responde a la ruta /academies y es la encargada de mostrar la lista de academias
  # localhost:3000/academies
  def index
  end

  # localhotst:3000/academies/1
  def show
    @academy = Academy.find(params[:id])
  end

  # localhost:3000/academies/new
  def new
    @academy = Academy.new
  end

  # localhost:3000/academies
  def create
    @academy = Academy.new(academy_params)
    if @academy.save
      redirect_to @academy
    else
      render :new
    end
  end

  # localhost:3000/academies/1/edit
  def edit
    @academy = Academy.find(params[:id])
  end

  # localhost:3000/academies/1
  def update
    @academy = Academy.find(params[:id])
    if @academy.update(academy_params)
      redirect_to @academy
    else
      render :edit
    end
  end

  # localhost:3000/academies/1
  def destroy
    @academy = Academy.find(params[:id])
  end


  private

  def academy_params
    params.require(:academy).permit(:name, :address, :city, :state, :zip)
  end
end
