class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @academies = Academy.all
  end

  def dashboard
    @academies = current_user.academies
  end
end
