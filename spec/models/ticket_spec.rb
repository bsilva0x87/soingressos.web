# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Ticket, type: :model do
  context 'validations' do
    describe '#kind' do
      it do
        should define_enum_for(:kind).with_values(%w[ticket dreams natal]).backed_by_column_of_type(:string)
      end
    end

    describe '#date' do
      it { should validate_presence_of(:date) }
    end
  end

  context 'associations' do
    it { should belong_to(:user).optional }
    it { should belong_to(:product) }
  end
end
