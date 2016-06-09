class AddApprovedToUser < ActiveRecord::Migration
  def up
    add_column :users, :approved, :boolean, default: false, null: false
    add_index :users, :approved
  end

  def down
    remove_index :users, :approved
    remove_column :users, :approved
  end
end
