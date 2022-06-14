class OrdersController < ApplicationController
  def index
    @listing = Listing.find(params[:listing_id])
    # if @listing.orders.find_by(status: "accepted")
    #   @orders = @listing.orders.find_by(status: "accepted")
    # else
    #   @orders = Order.where(listing: @listing)
    # end
  end

  def show
    @order = Order.find(params[:id])
    @listing = @order.listing
    # @other_listings_from_same_user = @listing.user.listings.where.not(id: @listing.id)
    @markers = [{ lat: @listing.latitude, lng: @listing.longitude }]
  end

  def new
    @order = Order.new
  end

  def create
    # user clicks on a listing they would like to order based on
    @order = Order.new(order_params)
    @listing = Listing.find(params[:listing_id])
    @order.listing = @listing
    @order.user = current_user
    if @order.save
      redirect_to dashboard_path
    else
      @other_listings_from_same_user = @listing.user.listings.where.not(id: @listing.id)
      render "listings/show"
    end
  end

  def accept
    @order = Order.find(params[:id])
    @order.accepted!
    @order.save
    redirect_to dashboard_path
  end

  def reject
    @order = Order.find(params[:id])
    @order.declined!
    @order.save
    respond_to do |format|
      format.html { redirect_to listing_orders_path(@order.listing) }
      format.text { render partial: "offers", locals: { listing: @order.listing }, formats: [:html] }
    end
  end

  def complete
    @order = Order.find(params[:id])
    @order.completed!
    @order.save
    respond_to do |format|
      format.html { redirect_to orders_path(@order) }
      format.js
    end
  end

  private

  def order_params
    params.require(:order).permit(:pickup_time)
  end
end
