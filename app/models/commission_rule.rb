# frozen_string_literal: true

class CommissionRule < ApplicationRecord
  enum kind: { percent: 'percent', markdown: 'markdown' }

  # Validations
  validates :name, presence: true, length: { in: (4..128) }
  validates :value, presence: true, numericality: { greater_than: 0 }
  validates :kind, presence: true
  validates :description, length: { maximum: 240 }
end
