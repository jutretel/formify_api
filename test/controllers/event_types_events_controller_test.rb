require 'test_helper'

class EventTypesEventsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @event_types_event = event_types_events(:one)
  end

  test "should get index" do
    get event_types_events_url, as: :json
    assert_response :success
  end

  test "should create event_types_event" do
    assert_difference('EventTypesEvent.count') do
      post event_types_events_url, params: { event_types_event: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show event_types_event" do
    get event_types_event_url(@event_types_event), as: :json
    assert_response :success
  end

  test "should update event_types_event" do
    patch event_types_event_url(@event_types_event), params: { event_types_event: {  } }, as: :json
    assert_response 200
  end

  test "should destroy event_types_event" do
    assert_difference('EventTypesEvent.count', -1) do
      delete event_types_event_url(@event_types_event), as: :json
    end

    assert_response 204
  end
end
