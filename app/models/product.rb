# frozen_string_literal: true

class Product < ApplicationRecord

  validates :name, presence: true, length: { in: (16..240) }

  # Associations
  belongs_to :company
end
