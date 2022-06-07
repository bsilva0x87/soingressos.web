# frozen_string_literal: true

class Address < ApplicationRecord

  # Statusable attribute concern
  STATUS_OPTIONS = %w[active inactive]
  include Statusable

  # Validations
  validates :street, :city, presence: true, length: (4..128)
  validates :number, presence: true, length: { maximum: 8 }
  validates :neighborhood, presence: true, length: { maximum: 128 }
  validates :complement, presence: true, length: { maximum: 72 }
  validates :state, :country, presence: true, length: (2..128)
  validates :country, presence: true, length: (2..64)
  validates :zipcode, presence: true, length: (6..16)
  validates :status, presence: true, inclusion: { in: STATUS_OPTIONS }
end
