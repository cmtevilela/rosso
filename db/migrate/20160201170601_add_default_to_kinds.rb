class AddDefaultToKinds < ActiveRecord::Migration
  def change
    add_column :kinds, :default, :boolean
  end
end
