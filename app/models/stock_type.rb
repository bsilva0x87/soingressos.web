# frozen_string_literal: true

class StockType < ApplicationRecord
  # Statusable attribute concern
  STATUS_OPTIONS = %w[active inactive].freeze
  include Statusable

  # Validations
  validates :name, presence: true, length: { in: (4..128) }
  validates :description, length: { maximum: 240 }
  validates :status, presence: true, inclusion: { in: STATUS_OPTIONS }
end
