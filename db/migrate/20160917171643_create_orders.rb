class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders, id: false do |t|
      t.primary_key :ord_no
      t.integer :purch_amt
      t.integer :customer_id
      t.integer :salesman_id
    end
  end
end
