class PoposController < ApplicationController

  def index
    @popos = Popo.all.order(:name)

    @popos_string = []
    
    @popos.each do |popo|
      if popo.is_married?
        @popos_string << "Casado"
      else
        @popos_string << "Vida Comum"
      end
    end
  end
  
  def popo_is_married
    @popos = Popo.all
    
    @popos.each do |popo|
      if popo.is_married?
        @popos_string << "casado"
      else
        @popos_string << "Vida Comum"  
      end
    end
    
  end

  def show
    @popo = Popo.find(params[:id])
  end

  def new
    @popo = Popo.new
  end

  def popos_params
    params.require(:popo).permit(:name, :is_married)
  end

  def create  
    @popo = Popo.new(popos_params)    

    if @popo.save
      redirect_to popos_path, flash[:notice] = "Popo criado com sucesso."
    else
      render "new"
    end
  end

  def edit
    @popo = Popo.find(params[:id])
    
  end

  def update
    @popo = Popo.find(params[:id])

    if @popo.update_attributes(popos_params)
      redirect_to popos_path, flash[:notice] = "Popo atualizado com sucesso."
    else
      render "edit"
    end
  end

  def destroy
    @popo = Popo.find(params[:id])
    @popo.destroy
    respond_to do |format|
      format.html { redirect_to popos_url, notice: 'Popo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
end

