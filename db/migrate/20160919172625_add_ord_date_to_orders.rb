class AddOrdDateToOrders < ActiveRecord::Migration[5.0]
  def change
    add_column :orders, :ord_date, :datetime
  end
end
