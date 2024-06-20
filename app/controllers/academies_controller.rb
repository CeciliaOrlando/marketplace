class AcademiesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show] # esto me deja afuera de la autenticacion a las acciones index y show de este controlador

  # por convencion esta accion responde a la ruta /academies y es la encargada de mostrar la lista de academias
  # localhost:3000/academies
  def index
    @academies = Academy.all # el @academies es un array de instancias de Academy
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
    @academy.user = current_user # esto es para que la academia creada se asocie con el usuario que la creo
    if @academy.save
      redirect_to @academy
    else
      render :new, status: :unprocessable_entity # si no se pudo guardar la academia, renderiza(vuelve a mostrarlo) el formulario de nuevo
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
    @academy.destroy
    redirect_to academies_path, notice: 'Academia eliminada con éxito.'
  end


  private

  def academy_params
    params.require(:academy).permit(:name, :address, :city, :state, :zip)
  end
end
