# frozen_string_literal: true

class Ticket < ApplicationRecord
  enum kind: %w[ticket dreams natal]

  validates :date, presence: true

  # Associations
  belongs_to :user, optional: true
  belongs_to :product
end
