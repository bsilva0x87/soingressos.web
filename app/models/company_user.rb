# frozen_string_literal: true

class CompanyUser < ApplicationRecord
  # Statusable attribute concern
  STATUS_OPTIONS = %w[active inactive].freeze
  include Statusable

  # Validations
  validates :status, presence: true, inclusion: { in: STATUS_OPTIONS }

  # Associations
  belongs_to :company
  belongs_to :user
  belongs_to :role, optional: true
end
