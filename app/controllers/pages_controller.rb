class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def dashboard
    # display all of the users current buy order
    @orders = current_user.orders
    @listings = current_user.listings
  end

end
