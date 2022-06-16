# frozen_string_literal: true

class Company < ApplicationRecord
  enum status: { active: 'active', inactive: 'inactive', blocked: 'blocked' }

  # Validations
  validates :name, presence: true, length: (4..128)
  validates :identifier, presence: true, length: (4..24)
  validates :registration, length: { maximum: 24 }
  validates :manager, length: { maximum: 128 }
  validates :phone, presence: true, length: (8..24)
  validates :mobile, length: (8..24)
  validates :country_code, :locale, length: (2..8)
  validates :status, presence: true

  # Associations
  belongs_to :address, optional: true
end
