# frozen_string_literal: true

class ProductField < ApplicationRecord
  enum kind: %w[text single multiple]

  validates :kind, presence: true
  validates :label, presence: true, length: { in: (4..128) }

  # Associations
  belongs_to :product
end
