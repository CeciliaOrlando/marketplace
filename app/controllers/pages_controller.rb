class PagesController < ApplicationController
  before_action :authenticate_user!, except:[:home]

  def home
    @academies = Academy.all
  end

  def dashboard
    @academies = current_user.academies
  end
end
