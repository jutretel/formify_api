class LocationsController < ApplicationController
  before_action :set_location, only: [:show, :update, :destroy]

  def search_by_date
    locations = Location.all

    @locations_ok = []

    locations.each do |l|
      events = Event.where(status: "Open", location_id: l.id)

      if (location_available events, params[:start_date], params[:end_date]) 
        @locations_ok << l
      end
    end

    render json: @locations_ok
  end

  def location_available(events, start_date, end_date)
    start_date = Time.parse(start_date)
    end_date = Time.parse(end_date)

    not_conflicted = events.where("start_date > ? AND start_date > ? OR end_date < ? AND end_date < ?", start_date, end_date, start_date, end_date)

    if ((events - not_conflicted).count == 0)
      return true 
    else
      false
    end
  end

  # GET /locations
  def index
    @locations = Location.all

    render json: @locations
  end

  # GET /locations/1
  def show
    render json: @location
  end

  # POST /locations
  def create
    @location = Location.new(location_params)

    if @location.save
      render json: @location, status: :created, location: @location
    else
      render json: @location.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /locations/1
  def update
    if @location.update(location_params)
      render json: @location
    else
      render json: @location.errors, status: :unprocessable_entity
    end
  end

  # DELETE /locations/1
  def destroy
    @location.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_location
      @location = Location.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def location_params
      params.fetch(:location, {}).permit(:name, :description)
    end
end
