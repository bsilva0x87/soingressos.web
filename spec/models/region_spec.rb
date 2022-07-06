# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Region, type: :model do
  context 'validations' do
    describe '#name' do
      it { should validate_presence_of(:name) }
      it { should validate_length_of(:name).is_at_least(4).is_at_most(128) }
    end

    describe '#status' do
      it { should validate_presence_of(:status) }

      it do
        should define_enum_for(:status)
          .with_values({ active: 'active', inactive: 'inactive' })
          .backed_by_column_of_type(:string)
      end
    end
  end

  context 'associations' do
    it { should belong_to(:region).optional }
    it { should have_many(:regions).class_name('Region') }
  end

  context 'methods' do
    subject { create(:region) }

    describe '#roots' do
      it { expect(Region.roots).to be_empty }

      it 'with records' do
        expect(subject.class.send(:count)).to eq(1)
      end
    end
  end
end
