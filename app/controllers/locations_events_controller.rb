class LocationsEventsController < EventsController
  def index_events
    Location.find(params[:location_id]).events
  end
end
