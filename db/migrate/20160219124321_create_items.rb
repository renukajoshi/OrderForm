class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.integer :product_id
      t.integer :line_item_id

      t.timestamps
    end
  end
end
