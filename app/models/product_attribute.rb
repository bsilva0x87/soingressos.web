# frozen_string_literal: true

class ProductAttribute < ApplicationRecord
  enum kind: %w[in out info]

  validates :kind, presence: true
  validates :description, presence: true, length: { in: (8..240) }

  # Associations
  belongs_to :product
end
