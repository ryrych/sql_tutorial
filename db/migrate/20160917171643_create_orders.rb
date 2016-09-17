class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.integer :ord_no
      t.integer :purch_amt
      t.integer :customer_id
      t.integer :salesman_id
    end
  end
end
