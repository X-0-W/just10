class ListingsController < ApplicationController

  def show
    @listing = Listing.find(params[:id])
  end

  def index
    @listings = Listing.all
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

end
