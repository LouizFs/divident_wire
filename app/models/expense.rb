class Expense < ApplicationRecord
  belongs_to :category
  belongs_to :wallet

  validates_presence_of :amount_cents, :category_id, :name
  monetize :amount_cents, allow_nil: true, numericality: { greater_than: 0 }

  def category_name
    category.name
  end

  def amount_value
    amount.format
  end
end
