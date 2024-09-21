class Category < ApplicationRecord
  validates_presence_of :name
  validates_presence_of :kind

  enum kind: [ :expense, :income ]

  scope :expenses, -> { where(kind: :expense) }
  scope :incomes, -> { where(kind: :income) }

  belongs_to :wallet
  has_many :expenses
end
