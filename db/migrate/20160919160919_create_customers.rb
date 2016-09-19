class CreateCustomers < ActiveRecord::Migration[5.0]
  def change
    create_table :customers, id:false do |t|
      t.primary_key :customer_id
      t.string :cust_name
      t.string :city
      t.integer :grade
    end
  end
end
