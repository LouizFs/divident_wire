class CreateIncomes < ActiveRecord::Migration[7.2]
  def change
    create_table :incomes do |t|
      t.monetize :amount
      t.string :name
      t.text :description
      t.references :category, null: false, foreign_key: true
      t.timestamp :received_on

      t.timestamps
    end
  end
end
