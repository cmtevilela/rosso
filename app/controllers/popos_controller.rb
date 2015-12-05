class PoposController < ApplicationController

	def index
		@popos = Popo.all
	end

	def show
		@popo = Popo.find(params[:id])
	end

	def new
		@popo = Popo.new
	end

	def popos_params
		params.require(:popo).permit(:name)
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
		
	end

	def update
		
	end

	def destroy
		
	end
end
