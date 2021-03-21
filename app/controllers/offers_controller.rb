class OffersController < ApplicationController
  before_action :set_offer, only: [:show, :show_limited, :edit, :destroy]

  def index
    @offers = Offer.where(venue_id: current_user.venue.id)
  end

  def index_all
    if params[:category].present?
      @dropdown_text = params[:category]
      @offers = Offer.where(category: params[:category]).order(:created_at)
    else
      @dropdown_text = "Select Category"
      @offers = Offer.all.order(:created_at)
    end
  end

  def show
    @bids = Bid.where(offer_id: @offer.id)
  end
  
  def show_limited
    @bid = Bid.new
  end

  def new
    @venue = Venue.find(params[:venue_id])
    @offer = Offer.new
  end

  def create
    @offer = Offer.new(offer_params.merge(venue_id: params[:venue_id]))
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
    @offer.destroy
    redirect_to root_path
  end

  private

  def set_offer
    @offer = Offer.find(params[:id])
  end

  def offer_params
    params.require(:offer).permit(:min_bid, :contract_length, :estimated_volume, :category, :venue_id)
  end
end
