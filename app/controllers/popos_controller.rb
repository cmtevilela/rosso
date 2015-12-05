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
      redirect_to popos_path, :notice => "A new Popo was created!"
    else
      render "new"
    end
  end

  def edit
    @popo = Popo.find(params[:id])
    
  end

  def update
    
  end

  def destroy
    
  end
end
