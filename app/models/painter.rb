class Painter < ApplicationRecord
  has_many :pictures, dependent: :destroy
  has_one :dog
  accepts_nested_attributes_for :pictures

  # attr_accessor :name#, :email, :content

  # validates_presence_of :name
  # validates_format_of :email, :with => /^[-a-z0-9_+\.]+\@([-a-z0-9]+\.)+[a-z0-9]{2,4}$/i
  # validates_length_of :content, :maximum => 500
end
