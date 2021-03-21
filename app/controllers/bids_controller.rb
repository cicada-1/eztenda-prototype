class BidsController < ApplicationController
  def index
    @bids = Bid.all
  end

  def show
    @bid = Bid.find(params[:id])
  end

  def new
    @offer = Offer.find(params[:offer_id])
    @bid = Bid.new
  end

  def create
    @offer = Offer.find(params[:offer_id])
    @bid = Bid.new(bid_params.merge(offer_id: params[:offer_id], brand_id: current_user.brand.id))
    if @bid.save!
      redirect_to offer_path(@offer)
    else
      render :new
    end
  end

  def destroy
    @bid.delete(@bid)
  end

  private

  def bid_params
    params.require(:bid).permit(:offer_amount, :additional)
  end
end
