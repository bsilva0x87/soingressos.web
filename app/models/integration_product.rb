class IntegrationProduct < ApplicationRecord
  enum status: { active: 'active', inactive: 'inactive' }

  # Validations
  validates :status, presence: true

  # Associations
  belongs_to :integration
  belongs_to :product
end
