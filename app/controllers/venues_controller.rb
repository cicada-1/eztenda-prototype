class VenuesController < ApplicationController
  skip_before_action :authenticate_user!, only: []

  before_action :set_venue, only: [:show, :edit, :destroy]

  def index
    @venues = Venue.all
  end

  def show
  end

  def new
    @venue = Venue.new
  end

  def create
    @venue = Venue.new(venue_params)
    if @venue.save
      redirect_to @venue
    else
      render :new
    end
  end

  def edit
  end

  def update
    @venue.update(venue_params)
    redirect_to venue_path(@venue)
  end

  def destroy
    @venue.destroy
    redirect_to root_path
  end

  private

  def set_venue
    @venue = Venue.find(params[:id])
  end

  def venue_params
    params.require(:venue).permit(:venue_name, :address, :phone_number, :description)
  end
end
