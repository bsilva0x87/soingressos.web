# frozen_string_literal: true

class Order < ApplicationRecord
  # Associations
  belongs_to :franchise, optional: true
end
