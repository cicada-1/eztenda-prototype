class BrandsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def new
    @brand = Brand.new
  end

  def create
    @brand = Brand.new(brand_params)
    if @brand.save
      redirect_to brand_path(@brand)
    else
      render :new 
    end   
  end

  def index
    @brand = Brand.all
  end

  def show
    @brand = Brand.find(params[:id])
  end


  def edit
  end

  def update
    if @brand.update(brand_params)
      redirect_to brand_path(@brand)
    else
      render :edit
    end  
  end

  def destroy
    @brand = Brand.find(params[:id])
    @brand.delete
  end

private


def brand_params
  params.require(:brand).permit(:brand_name, :address, :phone_number, :description)  
end


end
