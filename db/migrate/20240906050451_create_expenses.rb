class CreateExpenses < ActiveRecord::Migration[7.2]
  def change
    create_table :expenses do |t|
      t.monetize :amount
      t.string :name
      t.text :description
      t.references :category, null: false, foreign_key: true
      t.boolean :paid
      t.timestamp :paid_on

      t.timestamps
    end
  end
end
