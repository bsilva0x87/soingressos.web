# frozen_string_literal: true

class Region < ApplicationRecord
  
  # Statusable attribute concern
  STATUS_OPTIONS = %w[active inactive]
  include Statusable

  # Validations  
  validates :name, presence: true, length: { in: (4..128) }
  validates :status, presence: true, inclusion: { in: STATUS_OPTIONS }

  # Association
  belongs_to :region, optional: true
  has_many :regions, class_name: 'Region'
end
