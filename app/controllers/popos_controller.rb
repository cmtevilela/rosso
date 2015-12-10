class PoposController < ApplicationController
  before_action :set_popo, only: [:show, :edit, :update, :destroy]

  def index
    @popos = Popo.all.order(:name)
  end
  
  def show
  end

  def new
    @popo = Popo.new
  end

  def popos_params
    params.require(:popo).permit(:name, :email, :password, :password_confirmation, :is_married)
  end

  def create  
    @popo = Popo.new(popos_params)    

    if @popo.save
      redirect_to popos_path, notice: "Popo criado com sucesso."
    else
      render "new"
    end
  end

  def edit
  end

  def update
    if @popo.update_attributes(popos_params)
      redirect_to popos_path, notice: "Popo atualizado com sucesso."
    else
      render "edit"
    end
  end

  def destroy
    @popo.destroy
    respond_to do |format|
      format.html { redirect_to popos_url, notice: 'Popo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_popo
      @popo = Popo.find(params[:id])
    end

    
end

