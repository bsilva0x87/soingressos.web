# frozen_string_literal: true

class Company < ApplicationRecord
  # Statusable attribute concern
  STATUS_OPTIONS = %w[active inactive].freeze
  include Statusable

  # Validations
  validates :name, presence: true, length: (4..128)
  validates :identifier, presence: true, length: (4..24)
  validates :registration, length: { maximum: 24 }
  validates :manager, length: { maximum: 128 }
  validates :phone, presence: true, length: (8..24)
  validates :mobile, length: (8..24)
  validates :country_code, :locale, length: (2..8)
  validates :status, presence: true, inclusion: { in: STATUS_OPTIONS }

  # Associations
  belongs_to :address, optional: true
end
