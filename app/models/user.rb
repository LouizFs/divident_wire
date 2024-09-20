class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :wallets

  validates_presence_of :name
  validates_presence_of :email
  validates :email, format: { with: Devise.email_regexp }
end
