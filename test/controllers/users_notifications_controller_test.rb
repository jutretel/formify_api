require 'test_helper'

class UsersNotificationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @users_notification = users_notifications(:one)
  end

  test "should get index" do
    get users_notifications_url, as: :json
    assert_response :success
  end

  test "should create users_notification" do
    assert_difference('UsersNotification.count') do
      post users_notifications_url, params: { users_notification: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show users_notification" do
    get users_notification_url(@users_notification), as: :json
    assert_response :success
  end

  test "should update users_notification" do
    patch users_notification_url(@users_notification), params: { users_notification: {  } }, as: :json
    assert_response 200
  end

  test "should destroy users_notification" do
    assert_difference('UsersNotification.count', -1) do
      delete users_notification_url(@users_notification), as: :json
    end

    assert_response 204
  end
end
