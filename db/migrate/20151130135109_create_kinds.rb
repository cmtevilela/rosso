class CreateKinds < ActiveRecord::Migration
  def change
    create_table :kinds do |t|
      t.string :name, :unique => true, :null => false
      t.references :category, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
