class CreateSalesmans < ActiveRecord::Migration[5.0]
  def change
    create_table :salesmans, id: false do |t|
      t.primary_key :salesman_id
      t.string :name
      t.string :city
      t.integer :commission
    end
  end
end
