class CashFlowsController < ApplicationController
	before_action :set_cash_flow, only: [:show, :edit, :update, :destroy]
    
	def index
		@popo_cash_flow = CashFlow.where(popo_id: session[:popo_id])
		@cash_flows = CashFlow.all.order(:date)
		@default_kinds = Kind.where(default: true)
		@cat_1_sum = Kind.where(category_id: 1)
	end

	def show
	end

	def new
	  @cash_flow = CashFlow.new	
	end

	def cash_flows_params
		params.require(:cash_flow).permit(:description, :value, :date, :kind_id, :popo_id)
	end

	def create
		@cash_flow = CashFlow.new(cash_flows_params)
		@cash_flow.popo_id = session[:popo_id]

		if @cash_flow.save
			redirect_to cash_flows_path, notice: "#{@cash_flow.description} lançado com sucesso!"
		else
			render "new"
		end
	end

	def edit
	end

	def update
		if @cash_flow.update_attributes(cash_flows_params)
			redirect_to cash_flows_path, notice: "#{@cash_flow.description} atualizado com sucesso!"
		else
			render "edit"
		end
	end

	def destroy
		@cash_flow.destroy
		respond_to do |format|
      format.html { redirect_to cash_flows_url, notice: "#{@cash_flow.description} removido com sucesso!" }
      format.json { head :no_content }
    end
	end

  private
	  def set_cash_flow
		  @cash_flow = CashFlow.find(params[:id])
  	end
end
