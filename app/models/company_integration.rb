# frozen_string_literal: true

class CompanyIntegration < ApplicationRecord
  # Validations
  validates :chmod, presence: true, length: { is: 4 }

  # Associations
  belongs_to :company
  belongs_to :integration
end
