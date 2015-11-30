class AddFkPopoIdAndKindIdToCashFlowTable < ActiveRecord::Migration
  def change
  	add_foreign_key :cash_flows, :popos
  	add_foreign_key :cash_flows, :kinds
  end
end
