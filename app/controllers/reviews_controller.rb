class ReviewsController < ApplicationController

  def create
    @review = Review.new(review_params)
    @order = Order.find(params[:order_id])
    @review.order = @order
    if @review.save!
      redirect_to dashboard_path
    else
      render :new
    end
  end

  private

  def review_params
    params.permit(:approval)
  end
end
