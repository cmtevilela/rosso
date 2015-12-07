class KindsController < ApplicationController
	def index
		@kinds = Kind.all.order(:id)
	end

	def show
		@kind = Kind.find(params[:id])
	end

	def new
		@kind = Kind.new
	end

	def kinds_params
    params.require(:kind).permit(:name, :category_id)
  end

	def create
		@kind = Kind.new(popos_params)    

    if @kind.save
      redirect_to kinds_path, :notice => "Tipo criado com sucesso."
    else
      render "new"
    end
	end

	def edit
		@kind = Kind.find(params[:id])
		@category_name = []
		@category_id = []
		@categories = Category.all

    @categories.each do |categ|
			@category_name << categ.name
			@category_id << categ.id
		end
	end

	def update
		@kind = Kind.find(params[:id])

    if @kind.update_attributes(kinds_params)
      redirect_to kinds_path, :notice => "Tipo atualizado com sucesso."
    else
      render "edit"
    end
	end

	def destroy
		@kind = Kind.find(params[:id])
    @kind.destroy
    respond_to do |format|
      format.html { redirect_to popos_url, notice: 'Tipo deletado com sucesso' }
      format.json { head :no_content }
    end
	end
end
