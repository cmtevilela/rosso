class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def index
    if params[:approved] == "false"
      @users = User.find_by_approved(false)
    else
      @users = User.all.order(:name)
    end
  end
  
  def show
  end

  def new
    @user = User.new
  end

  def users_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :is_married)
  end

  def create  
    @user = User.new(users_params)    

    if @user.save
      redirect_to users_path, notice: "user criado com sucesso."
    else
      render "new"
    end
  end

  def edit
  end

  def update
    if @user.update_attributes(popos_params)
      redirect_to users_path, notice: "User atualizado com sucesso."
    else
      render "edit"
    end
  end

  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to popos_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_user
      @user = User.find(params[:id])
    end

    
end

