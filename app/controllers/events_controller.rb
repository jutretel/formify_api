class EventsController < ApplicationController
  before_action :set_event, only: [:show, :update, :destroy]

  def get_followed_events
    event_ids = EventUser.where(user_id: params[:user_id]).pluck(:event_id)
    @events = Event.where(:id => event_ids)

    render json: @events
  end

  def search_by_type
    @events = Event.where(event_type_id: params[:event_type_id])

    render json: @events
  end

  def search_by_location
    @event_types = Event.where(location_id: params[:location_id])

    render json: @event
  end

  def search_by_user
    @events = Event.where(user_id: params[:user_id])

    render json: @events
  end

  # GET /events
  def index
    @events = Event.all

    render json: @events
  end
  
  # GET /events/1
  def show
    render json: @event
  end

  # POST /events
  def create
    @event = Event.new(event_params)

    if @event.save
      render json: @event, status: :created, location: @event
    else
      render json: @event.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /events/1
  def update
    if @event.update(event_params)
      render json: @event
    else
      render json: @event.errors, status: :unprocessable_entity
    end
  end

  # DELETE /events/1
  def destroy
    @event.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @event = Event.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def event_params
      params.fetch(:event, {}).permit(
        :name,
        :start_date,
        :end_date,
        :location_id,
        :user_id,
        :description,
        :rating,
        :is_public,
        :event_type_id,
        :status)
    end
end
