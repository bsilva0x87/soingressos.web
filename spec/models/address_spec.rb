# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Address, type: :model do
  context 'validations' do
    describe '#street' do
      it { should validate_presence_of(:street) }
      it { should validate_length_of(:street).is_at_least(4).is_at_most(128) }
    end

    describe '#number' do
      it { should validate_presence_of(:number) }
      it { should validate_length_of(:number).is_at_most(8) }
    end

    describe '#neighborhood' do
      it { should validate_length_of(:neighborhood).is_at_most(128) }
    end

    describe '#complement' do
      it { should validate_length_of(:complement).is_at_most(72) }
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

    describe '#zipcode' do
      it { should validate_presence_of(:zipcode) }
      it { should validate_length_of(:zipcode).is_at_least(6).is_at_most(16) }
    end

    describe '#status' do
      it { should validate_presence_of(:status) }
      it { should define_enum_for(:status).with_values(%w[active inactive]).backed_by_column_of_type(:string) }
      it { should_not allow_values('null', 'none', 'locked').for(:status) }
    end
  end
end
