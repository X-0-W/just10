class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]
  def home
    @listings = Listing.all
  end

  def dashboard
    # display all of the users current buy order
    @orders = current_user.orders
    @listings = current_user.listings
    # @order = Order.find(order.id)
  end

  def my_listings
    @listings = current.listings
  end

  def my_orders
    @orders = current_user.orders
  end
end
