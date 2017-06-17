class Admin::LevelController < ApplicationController
  before_action :require_admin

  def index
    @questions = Level.all
  end

  def new
  end


  def create

  end

  def update

  end

  private
    def require_admin
      if !current_user.admin?
        redirect_to root_url
      end
    end
end
