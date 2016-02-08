class CreateLineitems < ActiveRecord::Migration
  def change
    create_table :lineitems do |t|
      t.string :name
      t.integer :sku
      t.text :description
      t.integer :quantity
      t.decimal :price

      t.timestamps
    end
  end
end
