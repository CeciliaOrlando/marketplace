class PagesController < ApplicationController
  before_action :authenticate_user!, except:[:home]

  def home
    @academies = Academy.all
  end

  #def dashboard
    #@academies = current_user.academies
    #@courses = []
    #current_user.academies.each do |academy|
      #academy.courses.each do |course|
        #@courses << course
      #end
    #end
  #end
  def dashboard
    @academies = current_user.academies
    @courses = current_user.courses
    @reservations = current_user.reservations
  end
end
