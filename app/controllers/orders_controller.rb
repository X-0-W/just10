class OrdersController < ApplicationController
  def index
    @listing = Listing.find(params[:listing_id])
    raise
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

  end

  def reject

  end

  private

  def order_params
    params.require(:order).permit(:pickup_time)
  end
end
