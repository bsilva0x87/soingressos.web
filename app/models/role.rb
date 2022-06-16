# frozen_string_literal: true

class Role < ApplicationRecord
  enum status: { active: 'active', inactive: 'inactive' }

  # Validations
  validates :name, presence: true, length: { in: (4..128) }
  validates :status, presence: true

  # Associations
  has_many :users, class_name: 'UserRole'
end
