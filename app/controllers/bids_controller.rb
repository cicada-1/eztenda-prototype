class BidsController < ApplicationController
  def index
    @bids = Bid.all
  end

  def show
    @bid = Bid.find(params[:id])
  end

  def new
    @brand = Brand.find(params[:brand_id])
    @bid = Bid.new
  end

  def create
    @bid = Bid.new(bid_params.merge(brand_id: params[:brand_id]))
    if @bid.save!
      redirect_to brand_bids_path
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
