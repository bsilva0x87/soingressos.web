# frozen_string_literal: true

require 'rails_helper'

RSpec.describe AffiliateCode, type: :model do
  context 'validations' do
    describe '#code' do
      it { should validate_presence_of(:code) }
      it { should validate_length_of(:code).is_equal_to(8) }
    end
  end

  context 'associations' do
    it { should belong_to(:user) }
  end
end
