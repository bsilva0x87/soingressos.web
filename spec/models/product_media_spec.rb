# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ProductMedia, type: :model do
  context 'validations' do
    describe '#kind' do
      it { should validate_presence_of(:kind) }

      it do
        should define_enum_for(:kind).with_values(%w[video link]).backed_by_column_of_type(:string)
      end
    end
  end

  context 'associations' do
    it { should belong_to(:product) }
  end
end
