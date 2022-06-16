# frozen_string_literal: true

class Ticket < ApplicationRecord
  enum kind: {internal: 'internal', external: 'external'}
  enum status: {active: 'active', inactive: 'inactive', used: 'used', expired: 'expired'}

  # Validations
  validates :kind, :date, :status, presence: true

  # Associations
  belongs_to :user, optional: true
  belongs_to :product
end
