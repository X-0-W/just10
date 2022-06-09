class ListingsController < ApplicationController

  def index
    respond_to do |format|
      if params[:address].present?
        @listings = Listing.near(params[:address], params[:distance] ||= 20)
        # if params[:query].present?
        # @listings = @listings.where("title ILIKE ?", "%#{params[:query]}")
        # end
        format.html
        format.text { render partial: "listings/results", locals: { listings: @listings }, formats: [:html] }
      else
        format.html { @listings = Listing.all }
      end
    end
  end

  def show
    @order = Order.new
    @listing = Listing.find(params[:id])
    @other_listings_from_same_user = @listing.user.listings.where.not(id: @listing.id)
    @markers = [{ lat: @listing.latitude, lng: @listing.longitude }]
  end

  def new
    @listing = Listing.new
  end

  def create
    @listing = Listing.new(listing_params)
    @listing.user = current_user
    if @listing.save
      redirect_to listing_path(@listing)
    else
      render :new
    end
  end

  def edit
    @listing = Listing.find(params[:id])
  end

  def update
    @listing = Listing.find(params[:id])

    if @listing.update(listing_params)
      redirect_to listing_path(@listing)
    else
      render :edit
    end
  end

  private

  def listing_params
    params.require(:listing).permit(:title, :collection_instruction, photos: [])
  end
end
