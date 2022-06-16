# frozen_string_literal: true

class Order < ApplicationRecord
  enum status: {active: 'active', inactive: 'inactive'}
  
  # Validations
  validates :status, presence: true

  # Associations
  belongs_to :franchise, optional: true
end
