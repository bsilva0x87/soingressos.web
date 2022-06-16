# frozen_string_literal: true

class CompanyUser < ApplicationRecord
  enum status: {active: 'active', inactive: 'inactive'}

  # Validations
  validates :status, presence: true

  # Associations
  belongs_to :company
  belongs_to :user
  belongs_to :role, optional: true
end
