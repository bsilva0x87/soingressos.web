# frozen_string_literal: true

class Order < ApplicationRecord
  # Statusable attribute concern
  STATUS_OPTIONS = %w[active inactive].freeze
  include Statusable

  # Validations
  validates :status, presence: true, inclusion: { in: STATUS_OPTIONS }

  # Associations
  belongs_to :franchise, optional: true
end
