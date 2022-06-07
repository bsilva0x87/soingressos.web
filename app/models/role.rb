# frozen_string_literal: true

class Role < ApplicationRecord

  # Statusable attribute concern
  STATUS_OPTIONS = %w[active inactive]
  include Statusable
  
  # Validations
  validates :name, presence: true, length: { in: (4..128) }
  validates :status, presence: true, inclusion: { in: STATUS_OPTIONS }

  # Associations
  has_many :users, class_name: 'UserRole'
end
