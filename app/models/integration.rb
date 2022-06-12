# frozen_string_literal: true

class Integration < ApplicationRecord
  # Statusable attribute concern
  STATUS_OPTIONS = %w[active inactive].freeze
  include Statusable

  # Validations
  validates :name, presence: true, length: { in: (4..128) }
  validates :description, :url, presence: true, length: { maximum: 240 }
  validates :username, length: { maximum: 128 }
  validates :kind, presence: true, length: { maximum: 64 }
  validates :status, presence: true, inclusion: { in: STATUS_OPTIONS }
end
