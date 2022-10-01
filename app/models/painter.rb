class Painter < ApplicationRecord
  has_many :picture, dependent: :destroy
end
