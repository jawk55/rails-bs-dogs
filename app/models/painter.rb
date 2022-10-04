class Painter < ApplicationRecord
  has_many :picture, dependent: :destroy
  accepts_nested_attributes_for :picture
end
