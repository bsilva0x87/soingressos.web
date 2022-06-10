# frozen_string_literal: true

class Ticket < ApplicationRecord
  # Statusable attribute concern
  STATUS_OPTIONS = %w[active inactive].freeze
  include Statusable

  enum kind: %w[ticket dreams natal]

  # Validations
  validates :date, presence: true
  validates :status, presence: true, inclusion: { in: STATUS_OPTIONS }

  # Associations
  belongs_to :user, optional: true
  belongs_to :product
end
