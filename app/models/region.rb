# frozen_string_literal: true

class Region < ApplicationRecord
  enum status: { active: 'active', inactive: 'inactive' }

  # Validations
  validates :name, presence: true, length: { in: (4..128) }
  validates :status, presence: true

  # Association
  belongs_to :region, optional: true
  has_many :regions, class_name: 'Region'

  scope :roots, ->{ where(region_id: nil) }
end
