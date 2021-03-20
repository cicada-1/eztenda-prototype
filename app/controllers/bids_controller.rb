class BidsController < ApplicationController
  def index
    @bid = Bid.all
  end

  def show
    @bid = Bid.find(params[:id])
  end

  def new
    @bid = Bid.new
  end

  def create
    @bid = Bid.new(bid_params)
    if @bid.save
      redirect_to bid_path(@bid)
    else
      render :new
    end
  end



  end

  def destroy
    @bid.delete(@bid)
  end

private

def bid_params
  params[:bid].permit(:offer_amount, :additional)
end
