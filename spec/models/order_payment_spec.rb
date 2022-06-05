# frozen_string_literal: true

require 'rails_helper'

RSpec.describe OrderPayment, type: :model do
  context 'validations' do
    describe '#kind' do
      it { should validate_presence_of(:kind) }
    end

    describe '#provider' do
      it { should validate_length_of(:provider).is_at_most(128) }
    end

    describe '#installments' do
      it { should validate_numericality_of(:installments).is_greater_than(0).only_integer }
    end

    describe '#total' do
      it { should validate_numericality_of(:total).is_greater_than(0) }
    end

    describe '#commission' do
      it { should validate_numericality_of(:commission).is_greater_than_or_equal_to(0) }
    end
  end

  context 'associations' do
    it { should belong_to(:order) }
  end
end
