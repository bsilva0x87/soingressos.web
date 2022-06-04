# frozen_string_literal: true

class ProductLocation < ApplicationRecord
  validates :address, presence: true, length: (24..240)
  validates :city, presence: true, length: (4..128)
  validates :state, :country, presence: true, length: (2..128)
  validates :country, presence: true, length: (2..64)

  # Associations
  belongs_to :product
end
