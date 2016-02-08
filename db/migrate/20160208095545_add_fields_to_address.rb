class AddFieldsToAddress < ActiveRecord::Migration
  def change
    add_column :addresses, :pin_code, :integer
  end
end
