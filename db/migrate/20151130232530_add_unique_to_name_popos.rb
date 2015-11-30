class AddUniqueToNamePopos < ActiveRecord::Migration
  def change
  	change_column :popos, :name, :string, :unique => true
  	change_column :categories, :name, :string, :unique => true
  	change_column :kinds, :name, :string, :unique => true
  	change_column :kinds, :category_id, :integer, null: false
  end	
end
