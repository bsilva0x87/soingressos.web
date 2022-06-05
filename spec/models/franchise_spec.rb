# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Franchise, type: :model do
  context 'validations' do
    describe '#name' do
      it { should validate_presence_of(:name) }
      it { should validate_length_of(:name).is_at_least(4).is_at_most(128) }
    end

    describe '#identifier' do
      it { should validate_presence_of(:identifier) }
      it { should validate_length_of(:identifier).is_at_least(4).is_at_most(24) }
    end

    describe '#registration' do
      it { should validate_length_of(:registration).is_at_most(24) }
    end

    describe '#manager' do
      it { should validate_length_of(:manager).is_at_most(128) }
    end

    describe '#phone' do
      it { should validate_presence_of(:phone) }
      it { should validate_length_of(:phone).is_at_least(8).is_at_most(24) }
    end

    describe '#mobile' do
      it { should validate_length_of(:mobile).is_at_least(8).is_at_most(24) }
    end

    describe '#country_code' do
      it { should validate_length_of(:country_code).is_at_least(2).is_at_most(8) }
    end

    describe '#locale' do
      it { should validate_length_of(:locale).is_at_least(2).is_at_most(8) }
    end
  end

  context 'associations' do
    it { should belong_to(:address).optional }
  end
end
