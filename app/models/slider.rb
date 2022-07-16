# frozen_string_literal: true

class Slider < ApplicationRecord
  enum status: { active: 'active', inactive: 'inactive' }

  # Validations
  validates :name, presence: true, length: {in: (4..128)}
  validates :status, presence: true

  # Associations
  belongs_to :franchise, optional: true
end
