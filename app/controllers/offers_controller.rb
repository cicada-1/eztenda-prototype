class OffersController < ApplicationController
  skip_before_action :authenticate_user!, only: []

  before_action :set_venue, only: [:show, :edit, :destroy]

  def index
    @offers = Offer.where(venue_id: current_user.venue.id)
  end

  def show
    @bids = Bid.where(offer_id: @offer.id)
  end

  def new
    @offer = Offer.new
  end

  def create
    @offer = Offer.new(offer_params)
    if @offer.save
      redirect_to offer_path(@offer)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @offer.update(offer_params)
    redirect_to offer_path(@offer)
  end

  def destroy
    @venue.destroy
    redirect_to root_path
  end

  private

  def set_offer
    @offer = Offer.find(params[:id])
  end

  def offer_params
    params.require(:offer).permit(:min_bid, :contract_length, :estimated_volume, :category)
  end
end
