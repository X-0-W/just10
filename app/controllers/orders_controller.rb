class OrdersController < ApplicationController
  def index

  end

  def new
    @order = Order.new
  end

  def create
    # user clicks on a listing they would like to order based on
    @order = Order.new(order_params)
    @order.listing = Listing.find(params[:listing_id])
    @order.user = current_user
    if @order.save
      redirect_to dashboard_path
    else
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
