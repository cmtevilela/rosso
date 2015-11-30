class AddNotNullToCashFlows < ActiveRecord::Migration
  def change
  	change_column :cash_flows, :date, :date, null: false 
  end
end
