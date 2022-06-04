# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ProductLocation, type: :model do
  context 'validations' do
    describe '#address' do
      it { should validate_presence_of(:address) }
      it { should validate_length_of(:address).is_at_least(24).is_at_most(240) }
    end

    describe '#city' do
      it { should validate_presence_of(:city) }
      it { should validate_length_of(:city).is_at_least(4).is_at_most(128) }
    end

    describe '#state' do
      it { should validate_presence_of(:state) }
      it { should validate_length_of(:state).is_at_least(2).is_at_most(128) }
    end

    describe '#country' do
      it { should validate_presence_of(:country) }
      it { should validate_length_of(:country).is_at_least(2).is_at_most(64) }
    end
  end

  context 'associations' do
    it { should belong_to(:product) }
  end
end
