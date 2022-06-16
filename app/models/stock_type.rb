# frozen_string_literal: true

class StockType < ApplicationRecord
  enum status: { active: 'active', inactive: 'inactive' }

  # Validations
  validates :name, presence: true, length: { in: (4..128) }
  validates :description, length: { maximum: 240 }
  validates :status, presence: true
end
