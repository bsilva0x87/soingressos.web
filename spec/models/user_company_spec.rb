# frozen_string_literal: true

require 'rails_helper'

RSpec.describe UserCompany, type: :model do
  context 'validations' do
    it { should validate_numericality_of(:comission).is_less_than_or_equal_to(100) }
  end

  context 'associations' do
    it { should belong_to(:user) }
    it { should belong_to(:company) }
    it { should belong_to(:role).optional }
  end
end
