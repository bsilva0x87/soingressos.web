# frozen_string_literal: true

class Product < ApplicationRecord
  
  # Statusable attribute concern
  STATUS_OPTIONS = %w[active inactive]
  include Statusable

  # Validations
  validates :name, presence: true, length: { in: (16..240) }
  validates :status, presence: true, inclusion: { in: STATUS_OPTIONS }

  # Associations
  belongs_to :company
end
