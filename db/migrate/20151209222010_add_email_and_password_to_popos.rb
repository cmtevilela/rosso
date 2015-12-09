class AddEmailAndPasswordToPopos < ActiveRecord::Migration
  def change
    add_column :popos, :email, :string, null: false
    add_column :popos, :password, :string, null: false
    add_column :popos, :admin, :boolean, default: false
  end
end
