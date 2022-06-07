# frozen_string_literal: true

class Segment < ApplicationRecord
  
  # Statusable attribute concern
  STATUS_OPTIONS = %w[active inactive]
  include Statusable

  # Validations
  validates :name, presence: true, length: { in: (4..72) }
  validates :description, length: { maximum: 240 }
  validates :index, presence: true, numericality: { only_integer: true }
  validates :status, presence: true, inclusion: { in: STATUS_OPTIONS }

  # Associations
  belongs_to :segment, optional: true
  has_many :segments, class_name: 'Segment'
end
