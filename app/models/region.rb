# frozen_string_literal: true

class Region < ApplicationRecord
  validates :name, presence: true, length: { in: (4..128) }

  # Association
  belongs_to :region, class_name: 'Region'
  has_many :regions, class_name: 'Region'
end
