class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.text :permanant_addr
      t.text :office_addr
      t.text :temparary_addr
      t.string :city
      t.string :state
      t.string :country

      t.timestamps
    end
  end
end
