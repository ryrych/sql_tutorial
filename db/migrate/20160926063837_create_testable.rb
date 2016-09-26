class CreateTestable < ActiveRecord::Migration[5.0]
  def change
    create_table :testables do |t|
      t.string :col1
    end
  end
end
