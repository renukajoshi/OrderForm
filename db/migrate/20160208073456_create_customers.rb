class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :fname
      t.string :lname
      t.string :email
      t.integer :contact_no
      t.date :birthdate

      t.timestamps
    end
  end
end
