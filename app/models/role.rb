# frozen_string_literal: true

class Role < ApplicationRecord
  validates :name, presence: true, length: { in: (4..128) }

  # Associations
  has_many :users, class_name: 'UserRole'
end
