class RemoveUniquenessFromPoposName < ActiveRecord::Migration
  def change
    change_column :popos, :name, :string, unique: false, null: false
  end
end
