class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :landing, :home ]

  def landing
  end

  def home
    @listings = Listing.all
  end

  def dashboard
    @listings = current_user.listings
    @count = @listings.includes(:orders).where(orders: { status: "pending" }).group(:listings).size
    @orders = current_user.orders
    @user_wishlist_listings = current_user.favorited_listings
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
