# frozen_string_literal: true

class ProductStockTracking < ApplicationRecord
  # Validations
  validates :kind, :origin, presence: true
  validates :quantity, presence: true, numericality: { greater_than_or_equal_to: 1 }

  # Association
  belongs_to :product
end
