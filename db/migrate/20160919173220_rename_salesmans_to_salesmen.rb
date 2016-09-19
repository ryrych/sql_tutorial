class RenameSalesmansToSalesmen < ActiveRecord::Migration[5.0]
  def change
    rename_table :salesmans, :salesmen
  end
end
