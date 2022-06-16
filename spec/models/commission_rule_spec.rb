# frozen_string_literal: true

require 'rails_helper'

RSpec.describe CommissionRule, type: :model do
  context 'validations' do
    describe '#name' do
      it { should validate_presence_of(:name) }
      it { should validate_length_of(:name).is_at_least(4).is_at_most(128) }
    end

    describe '#value' do
      it { should validate_presence_of(:value) }
      it { should validate_numericality_of(:value).is_greater_than(0) }
    end

    describe '#kind' do
      it { should validate_presence_of(:kind) }

      it do
        should define_enum_for(:kind)
          .with_values({ percent: 'percent', markdown: 'markdown' })
          .backed_by_column_of_type(:string)
      end
    end

    describe '#description' do
      it { should validate_length_of(:description).is_at_most(240) }
    end
  end
end
