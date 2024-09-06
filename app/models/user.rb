class User < ApplicationRecord
  validate_presence_of :name
  validate_presence_of :username
end
