# frozen_string_literal: true

class AffiliateCode < ApplicationRecord
  validates :code, presence: true, length: { is: 8 }

  # Associations
  belongs_to :user

end
