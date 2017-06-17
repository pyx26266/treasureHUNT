class SiteController < ApplicationController
  def home
    if logged_in?
      redirect_to current_user
    end
  end

  def contact
  end

  def about
  end
end
