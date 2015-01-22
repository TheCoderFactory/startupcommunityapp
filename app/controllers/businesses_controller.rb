class BusinessesController < ApplicationController
  before_action :set_business, only: [:join, :leave, :show, :edit, :update, :destroy]

  respond_to :html

  def join
    @business.users << current_user
    redirect_to @business
  end

  def leave
    @business.users.delete(current_user)
    redirect_to @business
  end

  def index
    @businesses = Business.all
    respond_with(@businesses)
  end

  def show
    @owner = User.find_by(id: @business.owner)
    respond_with(@business)
  end

  def new
    @business = Business.new
    respond_with(@business)
  end

  def edit
  end

  def create
    @business = Business.new(business_params)
    @business.users << current_user
    @business.owner = current_user.id
    @business.save
    respond_with(@business)
  end

  def update
    @business.update(business_params)
    respond_with(@business)
  end

  def destroy
    @business.destroy
    respond_with(@business)
  end

  private
    def set_business
      @business = Business.friendly.find(params[:id])
    end

    def business_params
      params.require(:business).permit(:name, :logo, :description, :slug, :owner, :latitude, :longitude, :address, :suburb, :state, :postcode)
    end
end
