# frozen_string_literal: true

class UserCompany < ApplicationRecord
  # Statusable attribute concern
  STATUS_OPTIONS = %w[active inactive].freeze
  include Statusable

  # Validations
  validates_numericality_of :comission, less_than_or_equal_to: 100
  validates :status, presence: true, inclusion: { in: STATUS_OPTIONS }

  # Associations
  belongs_to :user
  belongs_to :company
  belongs_to :role, optional: true
end
