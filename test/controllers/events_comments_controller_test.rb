require 'test_helper'

class EventsCommentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @events_comment = events_comments(:one)
  end

  test "should get index" do
    get events_comments_url, as: :json
    assert_response :success
  end

  test "should create events_comment" do
    assert_difference('EventsComment.count') do
      post events_comments_url, params: { events_comment: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show events_comment" do
    get events_comment_url(@events_comment), as: :json
    assert_response :success
  end

  test "should update events_comment" do
    patch events_comment_url(@events_comment), params: { events_comment: {  } }, as: :json
    assert_response 200
  end

  test "should destroy events_comment" do
    assert_difference('EventsComment.count', -1) do
      delete events_comment_url(@events_comment), as: :json
    end

    assert_response 204
  end
end
