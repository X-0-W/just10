class ListingsController < ApplicationController
  def index
    respond_to do |format|
      if params[:address].present?
        # 3 rows below moved in place of commented line, following tagging merge
        first_result = Geocoder.search(params[:address]).first
        session[:last_coordinates] = [first_result.latitude, first_result.longitude]
        @listings = Listing.active.near(session[:last_coordinates], params[:distance] ||= 20).where.not(user: current_user)
        # @listings = Listing.near(params[:address], params[:distance] ||= 20).where.not(user: current_user)
        if params[:tag_list].present?
          @listings = @listings.tagged_with(params[:tag_list], any: true)
        end
      end
        # if params[:query].present?
        # @listings = @listings.where("title ILIKE ?", "%#{params[:query]}")
        # end
        format.html
        format.text { render partial: "listings/results", locals: { listings: @listings }, formats: [:html] }
        # format.html { @listings = Listing.all }
    end
  end

  def favorite
    @listing = Listing.find(params[:id])
    params[:value] == "true" ? current_user.favorite(@listing) : current_user.unfavorite(@listing)
    redirect_to @listing
  end

  def show
    @order = Order.new
    @listing = Listing.find(params[:id])
    @other_listings_from_same_user = @listing.user.listings.where.not(id: @listing.id)
    @markers = [{ lat: @listing.latitude, lng: @listing.longitude }]
    @chatroom = current_user.chatroom_with(@listing.user)
  end

  def new
    @listing = Listing.new
  end

  def create
    @listing = Listing.new(listing_params)
    @listing.user = current_user
    if @listing.save
      redirect_to dashboard_path
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

  def tagged
    if params[:tag].present?
      @listings = Listing.tagged_with(params[:tag])
    else
      @listings = Listing.all
    end
  end

  private

  def listing_params
    params.require(:listing).permit(:title, :collection_instruction, :photo, :tag_list, :address)
  end
end
