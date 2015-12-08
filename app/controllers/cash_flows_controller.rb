class CashFlowsController < ApplicationController
	def index
		@cash_flows = CashFlow.all.order(:date)
		
	end
end
