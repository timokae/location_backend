class LocationController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @locations = Location.all.order(measured_at: :desc)
    @count = @locations.count
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

  def count_by_name
    @name = params[:name]
    @count = Location.where(name: @name).count

    render json: { name: @name, count: @count }
  end

  def locations_by_name
    @name = params[:name]
    @locations = Location.where(name: @name).order(measured_at: :desc)
    @count = @locations.count

    render 'locations_by_name'
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
