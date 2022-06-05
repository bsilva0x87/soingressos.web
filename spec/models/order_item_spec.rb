# frozen_string_literal: true

require 'rails_helper'

RSpec.describe OrderItem, type: :model do
  context 'validations' do
    describe '#date' do
      it { should validate_presence_of(:date) }
    end

    describe '#description' do
      it { should validate_length_of(:description).is_at_most(240) }
    end

    describe '#amount' do
      it { should validate_numericality_of(:amount).is_greater_than(0).only_integer }
    end

    describe '#price' do
      it { should validate_numericality_of(:price).is_greater_than(0) }
    end

    describe '#total' do
      it { should validate_numericality_of(:total).is_greater_than(0) }
    end
  end

  context 'associations' do
    it { should belong_to(:order) }
    it { should belong_to(:product) }
  end
end
