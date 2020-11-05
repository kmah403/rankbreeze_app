class ListingsController < ApplicationController
  before_action :require_listing, only: :show

  def index
    @listings = current_user.listings
  end

  def show; end

  def new
    @listing = current_user.listings.build
  end

  def create
    if (res = Listings::Operations::Create.call(record_params: record_params)).success?
      flash[:success] = MessageHelper.action(record_class.model_name.human, 'created')
    else
      flash[:alert] = 'Something wrong!'
    end
    redirect_to listing_path(res.data[:record])
  end

  private

  def record_class
    Listing
  end

  def require_listing
    @listing = Listing.find_by(id: params[:id])
  end

  def record_params
    params.require(:listing).permit!
  end
end
