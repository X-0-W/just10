class ListingsController < ApplicationController

  def show
    @listing = Listing.find(params[:id])
    @other_listings_from_same_user = @listing.user.listings.where.not(id: @listing.id)
  end

  def index
    @listings = Listing.all
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
