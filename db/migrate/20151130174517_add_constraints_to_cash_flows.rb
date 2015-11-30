class AddConstraintsToCashFlows < ActiveRecord::Migration
  def up
  	change_column :cash_flows, :value, :decimal, null: false
  	change_column :cash_flows, :popo_id, :integer, null: false
  	change_column :cash_flows, :kind_id, :integer, null: false
  end

  def down
		change_column :cash_flows, :value
  	change_column :cash_flows, :popo_id 
  	change_column :cash_flows, :kind_id
  end
end


  