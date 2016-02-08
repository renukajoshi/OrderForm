class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.integer :sku
      t.integer :quantity
      t.integer :length
      t.integer :width
      t.integer :height
      t.decimal :price
      t.string :company

      t.timestamps
    end
  end
end
