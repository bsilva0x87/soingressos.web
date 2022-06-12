# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ProductStockTracking, type: :model do
  context 'validations' do
    describe '#kind' do
      it { should validate_presence_of(:kind) }
    end

    describe '#quantity' do
      it { should validate_presence_of(:quantity) }
      it { should validate_numericality_of(:quantity).is_greater_than_or_equal_to(1) }
    end

    describe '#origin' do
      it { should validate_presence_of(:origin) }
    end
  end

  context 'associations' do
    it { should belong_to(:product) }
  end
end
