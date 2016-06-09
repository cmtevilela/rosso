class RenamePoposToUsersAndRemovePasswordAndEmailColumns < ActiveRecord::Migration
  def up
    remove_column :popos, :password
    remove_column :popos, :admin
    rename_table :popos, :users
  end
end
