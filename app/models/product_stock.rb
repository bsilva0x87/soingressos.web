# frozen_string_literal: true

class ProductStock < ApplicationRecord
  # Validations
  validates :date, presence: true
  validates :stock, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :price, presence: true, numericality: { greater_than: 1.00 }

  # Associations
  belongs_to :product
  belongs_to :stock_type
end
