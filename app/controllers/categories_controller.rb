class CategoriesController < ApplicationController
	before_action :set_category, only: [:show, :edit, :update, :destroy]

	def index
		@categories = Category.all
	end

	def show
		
	end

	def new
		@category = Category.new
	end

	def create
		@category = Category.new(categories_params)

		if @category.save
			redirect_to categories_path, notice: "Categoria #{@category.name}criada com sucesso!"
		else
			render "new"
		end
	end

	def edit
		
	end

	def categories_params
		params.require(:category).permit(:name)
	end

	def update
		if @category.update_attributes(categories_params)
			redirect_to categories_path, notice: "Categoria #{@category.name} atualizada com sucesso!"
		else
			render "new"
		end
	end

	def destroy
		@category.destroy

		respond_to do |format|
      format.html { redirect_to categories_url, notice: "Categoria #{@category.name} removida com sucesso." }
      format.json { head :no_content }
    end
	end

  def set_category
  	@category = Category.find(params[:id])
  end

end
