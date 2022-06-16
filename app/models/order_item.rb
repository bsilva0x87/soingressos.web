# frozen_string_literal: true

class OrderItem < ApplicationRecord
  # Validations
  validates :date, presence: true
  validates :description, length: { maximum: 240 }
  validates :amount, numericality: { greater_than: 0, only_integer: true }
  validates :price, :total, numericality: { greater_than: 0 }

  # Associations
  belongs_to :order
  belongs_to :product
end
