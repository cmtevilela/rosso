class AddColumnsPopoIdAndKindIdToCashFlowTable < ActiveRecord::Migration
  def change
	  	add_column :cash_flows, :popo_id, :integer, after: :date
	  	add_column :cash_flows, :kind_id, :integer, after: :date
  end
end
