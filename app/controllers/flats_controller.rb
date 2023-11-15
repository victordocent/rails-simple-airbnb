class FlatsController < ApplicationController
  before_action :set_flat, only: %i[ show ]

  def show
    @flat = Flat.find(params[:id])
  end

  def index
    @flats = Flat.all
  end

  private

  def set_flat
    @flatt = Flat.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def flat_params
    params.require(:flat).permit(:name, :address, :description, :price_per_night, :number_of_guests, :primary_image, :availability)
  end

end
