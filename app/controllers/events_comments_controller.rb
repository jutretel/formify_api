class EventsCommentsController < CommentsController
  def index_comments
    Event.find(params[:event_id]).comments
  end
end
