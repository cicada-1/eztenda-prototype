class PagesController < ApplicationController
  def home
    @bids = Bid.last(9)
  end
end
