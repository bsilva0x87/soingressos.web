# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ProductField, type: :model do
  context 'validations' do
    describe '#kind' do
      it { should validate_presence_of(:kind) }

      it do
        should define_enum_for(:kind).with_values(%w[text single multiple]).backed_by_column_of_type(:string)
      end
    end

    describe '#label' do
      it { should validate_presence_of(:label) }
      it { should validate_length_of(:label).is_at_least(4).is_at_most(128) }
    end
  end

  context 'associations' do
    it { should belong_to(:product) }
  end
end
