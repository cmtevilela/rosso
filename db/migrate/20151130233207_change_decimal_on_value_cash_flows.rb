class ChangeDecimalOnValueCashFlows < ActiveRecord::Migration
  def change
  	change_column :cash_flows, :value, :decimal, :precision => 9, :scale => 2
  end
end
