class CurrentUserController < ApplicationController
  def index
    # @user = User.find(session[:user_id])
    @cash_flows = @user.cash_flows.joins(:kind).order(:date, "kinds.name")
    
    @categories_sum = {}

    Category.all.order(:name).each do |category|
      values = @user.cash_flows.where(kind_id: category.kinds.pluck(:id)).pluck(:value)
      @categories_sum[category.name] = values.sum
    end 


    # @user_cashflows = CashFlow.where(user_id: session[:user_id])
    # @kinds = Kind.where(category_id: 1)

    # @values_1 = []

    # @kinds.each do |kind|
    #   @values_1.concat(CashFlow.where(kind_id: kind.id, 
    #                                   user_id: session[:user_id]).pluck(:value))
    # end

    # @users_cash_cat1 = []

    # @kinds.each do |kind|
    #   @users_cash_cat1 << @user_cashflows.where(kind_id: kind.id)
    # end

    # @values = []

    # @user_cashflows.each do |cash_flow|
    #   @values << cash_flow.value
    # end
  end

  def view
  end
end
