# frozen_string_literal: true

class AffiliateCode < ApplicationRecord

  # Statusable attribute concern
  STATUS_OPTIONS = %w[active inactive]
  include Statusable

  # Validations
  validates :code, presence: true, length: { is: 8 }
  validates :status, presence: true, inclusion: { in: STATUS_OPTIONS }
  
  # Associations
  belongs_to :user
end
