class UsersController < ApplicationController
  before_action :set_user, only: [:show, :update, :destroy]

  def index_users
    User.all
  end

  def search_by_name
    @events = User.where("name LIKE :name", name: "%#{params[:user_name]}%")

    render json: @events
  end

  

  # GET /users
  def index
    @users = index_users

    render json: @users
  end

  def login
    @users = User.where(email: params[:email], password: params[:password])
    render json: @users.first
  end

  def search_by_email
    @users = User.where(email: params[:email])
    render json: @users.first
  end

  # GET /users/1
  def show
    render json: @user
  end

  # POST /users
  def create
    @user = User.new(user_params)

    if @user.save
      render json: @user, status: :created, location: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /users/1
  def update
    if @user.update(user_params)
      render json: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /users/1
  def destroy
    @user.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_params
      params.fetch(:user, {}).permit(:name, :email, :password, :rating)
    end
end
