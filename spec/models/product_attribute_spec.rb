# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ProductAttribute, type: :model do
  context 'validations' do
    describe '#kind' do
      it { should validate_presence_of(:kind) }

      it do
        should define_enum_for(:kind).with_values(%w[in out info]).backed_by_column_of_type(:string)
      end
    end

    describe '#description' do
      it { should validate_presence_of(:description) }
      it { should validate_length_of(:description).is_at_least(8).is_at_most(240) }
    end
  end

  context 'associations' do
    it { should belong_to(:product) }
  end
end
