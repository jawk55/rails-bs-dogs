class Client < ApplicationRecord
  has_many :reservations, dependent: :destroy
  has_many :restaurants, through: :reservations
end
