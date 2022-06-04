class UserCompany < ApplicationRecord

  validates_numericality_of :comission, less_than_or_equal_to: 100

  # Associations
  belongs_to :user
  belongs_to :company
  belongs_to :role, optional: true
end
