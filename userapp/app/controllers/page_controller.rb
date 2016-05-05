class PageController < ApplicationController
  def home
    if user_signed_in?
      redirect_to courses_path
    end
  end

  def about
  end

  def contact
  end
end
