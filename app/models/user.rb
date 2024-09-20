class User < ApplicationRecord
  has_many :wallets


  validates_presence_of :name
  validates_presence_of :username
end
