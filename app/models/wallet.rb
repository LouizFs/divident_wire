class Wallet < ApplicationRecord
  belongs_to :user

  has_many :categories

  validates_presence_of :name
end
