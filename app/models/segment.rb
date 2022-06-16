# frozen_string_literal: true

class Segment < ApplicationRecord
  enum status: { active: 'active', inactive: 'inactive' }

  # Validations
  validates :name, presence: true, length: { in: (4..72) }
  validates :description, length: { maximum: 240 }
  validates :index, presence: true, numericality: { only_integer: true }
  validates :status, presence: true

  # Associations
  belongs_to :segment, optional: true
  has_many :segments, class_name: 'Segment'
end
