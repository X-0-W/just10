class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]
  def home
    @listings = Listing.all
  end

  def dashboard
  end

  def my_listings
    @listings = current_user.listings
  end

  def my_orders
    @orders = current_user.orders
  end

  def my_wishlists
    @user_wishlist_listings = current_user.favorited_listings
  end
end
