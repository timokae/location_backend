class LocationController < ApplicationController
  skip_before_action :verify_authenticity_token
  
  def index 
    @locations = Location.all
  end

  def create
    @location = Location.new(location_params)

    if @location.save
      render json: { success: true }
    else
      render json: {
        success: false,
        error: @location.errors.full_messages[0]
      }
    end
  end

  private

  def location_params
    params.require(:location).permit(
      :latitude,
      :longitude,
      :measured_at,
      :strategy,
      :name
    )
  end
end
