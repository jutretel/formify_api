class EventUsersController < ApplicationController
  before_action :set_event_user, only: [:show, :update, :destroy]

  # GET /event_users
  def index
    @event_users = EventUser.all

    render json: @event_users
  end

  def search_by_user
    @event_users = EventUser.where(user_id: params[:user_id])

    render json: @event_users
  end

  def search_by_event
    @event_users = EventUser.where(event_id: params[:event_id])

    render json: @event_users
  end

  def get_following_users
    follows = EventUser.where(event_id: params[:event_id])

    @users = follows.pluck(:user_id)

    render json: @users
  end

  def last_participation
    @event_user = EventUser.where(user_id: params[:user_id], event_id: params[:event_id]).last

    render json: @event_user
  end

  def delete_participation
    @event_users = EventUser.where(user_id: params[:user_id], event_id: params[:event_id]).last.destroy
  end

  # GET /event_users/1
  def show
    render json: @event_user
  end

  # POST /event_users
  def create
    @event_user = EventUser.new(event_user_params)

    if @event_user.save
      render json: @event_user, status: :created, location: @event_user
    else
      render json: @event_user.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /event_users/1
  def update
    if @event_user.update(event_user_params)
      render json: @event_user
    else
      render json: @event_user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /event_users/1
  def destroy
    @event_user.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event_user
      @event_user = EventUser.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def event_user_params
      params.fetch(:event_user, {}).permit(:user_id, :event_id, :participation_type)
    end
end
