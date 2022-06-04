# frozen_string_literal: true

class ProductMedia < ApplicationRecord
  enum kind: %w[video link]

  validates :kind, presence: true

  # Associations
  belongs_to :product
end
