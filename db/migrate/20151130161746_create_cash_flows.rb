class CreateCashFlows < ActiveRecord::Migration
  def change
    create_table :cash_flows do |t|
      t.string :description
      t.decimal :value
      t.date :date

      t.timestamps null: false
    end
  end
end
