class UsersController < ApplicationController
  #before_action :set_user, only: %i[ show edit update destroy ]
    before_action :authenticate_admin!, :only => [:new, :create]
  # GET /users or /users.json
  def index
    @users = User.all
  end

   # GET /users/1 or /users/1.json
   def show
    @user = User.find(params[:id])
   # @user = current_user
   end

   # GET /users/new
  def new
   # @user = User.new
  end

    # GET /users/1/edit
  def edit
    @user = User.find(params[:id])
  end

  # POST /users or /users.json
  def create
    @user = User.new(user_params)
    @user.author = current_admin.adminname
    
    if @user.save
      redirect_to @user
    else
      render action: 'new'
    end
  end


  def update
    @user = User.find(params[:id])

    if @user.update(user_params)
      redirect_to @user
    else
      render action: 'edit'
    end    
  end


  def destroy
    @user = User.find(params[:id])
    @user.destroy

    redirect_to user_path
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_params
      params.require(:user).permit(:name, :email)
    end
end