require 'test_helper'

class LocationsEventsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @locations_event = locations_events(:one)
  end

  test "should get index" do
    get locations_events_url, as: :json
    assert_response :success
  end

  test "should create locations_event" do
    assert_difference('LocationsEvent.count') do
      post locations_events_url, params: { locations_event: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show locations_event" do
    get locations_event_url(@locations_event), as: :json
    assert_response :success
  end

  test "should update locations_event" do
    patch locations_event_url(@locations_event), params: { locations_event: {  } }, as: :json
    assert_response 200
  end

  test "should destroy locations_event" do
    assert_difference('LocationsEvent.count', -1) do
      delete locations_event_url(@locations_event), as: :json
    end

    assert_response 204
  end
end
