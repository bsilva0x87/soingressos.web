# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ProductStock, type: :model do
  context 'validations' do
    describe '#date' do
      it { should validate_presence_of(:date) }
    end

    describe '#stock' do
      it { should validate_presence_of(:stock) }
      it { should validate_numericality_of(:stock).is_greater_than_or_equal_to(0) }
    end

    describe '#price' do
      it { should validate_presence_of(:price) }
      it { should validate_numericality_of(:price).is_greater_than(1.00) }
    end
  end

  context 'associations' do
    it { should belong_to(:product) }
    it { should belong_to(:stock_type) }
  end
end
