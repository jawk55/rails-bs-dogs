class Restaurant < ApplicationRecord
  has_many :reservations, dependent: :destroy
  has_many :clients, through: :reservations
end
