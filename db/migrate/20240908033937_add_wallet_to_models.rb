class AddWalletToModels < ActiveRecord::Migration[7.2]
  def change
    add_reference :categories, :wallet, index: true, null: false
    add_reference :expenses, :wallet, index: true, null: false
    add_reference :incomes, :wallet, index: true, null: false
  end
end
