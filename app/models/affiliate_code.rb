# frozen_string_literal: true

class AffiliateCode < ApplicationRecord
  enum status: {active: 'active', inactive: 'inactive', blocked: 'blocked'}

  # Validations
  validates :code, presence: true, length: { is: 8 }
  validates :status, presence: true

  # Associations
  belongs_to :user
end
