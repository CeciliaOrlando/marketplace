class CoursesController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @courses = Course.all
  end

  def show
    @course = Course.find(params[:id])
    @reservations = @course.reservations
  end

  def new
    @academy = Academy.find(params[:academy_id])
    @course = Course.new
  end

  def create
    @academy = Academy.find(params[:academy_id])
    @course = Course.new(course_params)
    @course.academy = @academy
    if @course.save
      redirect_to academy_path(@academy)
    else
      render :new
    end
  end

  def edit
    @course = Course.find(params[:id])
  end

  def update
    @course = Course.find(params[:id])
    @course.update(course_params)
    redirect_to course_path(@course)
  end

  def destroy
    @course = Course.find(params[:id])
    @course.destroy
    redirect_to academy_path(@course.academy)
  end

  private

  def course_params
    params.require(:course).permit(:name, :description, :price, :duration)
  end

end