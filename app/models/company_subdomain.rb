# frozen_string_literal: true

class CompanySubdomain < ApplicationRecord
  enum status: { active: 'active', inactive: 'inactive' }

  # Validations
  validates :subdomain, presence: true, uniqueness: true
  validates :status, presence: true

  # Associations
  belongs_to :company
end
