class CreatePopos < ActiveRecord::Migration
  def change
    create_table :popos do |t|
      t.string :name, :unique => true, :null => false

      t.timestamps null: false
    end
  end
end
