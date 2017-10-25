class EventTypesEventsController < EventTypesController
  def index_event_types
    EventType.find(params[:event_type_id]).events
  end
end
