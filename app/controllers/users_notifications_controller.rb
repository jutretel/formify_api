class UsersNotificationsController < NotificationController
  def index_notifications
    User.find(params[:user_id]).notifications
  end
end
