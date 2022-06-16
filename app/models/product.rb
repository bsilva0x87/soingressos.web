# frozen_string_literal: true

class Product < ApplicationRecord
  enum status: {active: 'active', inactive: 'inactive'}

  # Validations
  validates :name, presence: true, length: { in: (16..240) }
  validates :status, presence: true

  # Associations
  belongs_to :company
end
