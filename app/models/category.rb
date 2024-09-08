class Category < ApplicationRecord
  validates_presence_of :name
  validates_presence_of :kind

  enum kind: [ :expense, :income ]
end
