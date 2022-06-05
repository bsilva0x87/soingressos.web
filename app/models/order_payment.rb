# frozen_string_literal: true

class OrderPayment < ApplicationRecord
  enum currency: %w[BRL USD EUR]

  validates :kind, presence: true
  validates :provider, length: { maximum: 128 }
  validates :installments, numericality: { greater_than: 0, only_integer: true }
  validates :total, numericality: { greater_than: 0 }
  validates :commission, numericality: { greater_than_or_equal_to: 0 }

  # Assocations
  belongs_to :order
end
