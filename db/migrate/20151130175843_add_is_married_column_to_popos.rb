class AddIsMarriedColumnToPopos < ActiveRecord::Migration
  def change
  	add_column :popos, :is_married, :boolean, after: :name, null: false
  end
end
