# frozen_string_literal: true

class OrderCustomer < ApplicationRecord
  enum document: %w[rg cpf cnh passport id]

  # Validations
  validates :name, presence: true, length: { in: (4..128) }
  validates :email, presence: true, format: { with: User::EMAIL_REGEX }
  validates :phone, :mobile, presence: true, length: { in: (8..16) }
  validates :identifier, presence: true, length: { in: (6..16) }

  validates :street, :city, presence: true, length: (4..128)
  validates :number, presence: true, length: { maximum: 8 }
  validates :neighborhood, presence: true, length: { maximum: 128 }
  validates :complement, presence: true, length: { maximum: 72 }
  validates :state, :country, presence: true, length: (2..128)
  validates :country, presence: true, length: (2..64)
  validates :zipcode, presence: true, length: (6..16)

  # Associations
  belongs_to :order
end
