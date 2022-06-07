# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Segment, type: :model do
  context 'validations' do
    describe '#name' do
      it { should validate_presence_of(:name) }
      it { should validate_length_of(:name).is_at_least(4).is_at_most(72) }
    end

    describe '#description' do
      it { should validate_length_of(:description).is_at_most(240) }
    end

    describe '#index' do
      it { should validate_presence_of(:index) }
      it { should validate_numericality_of(:index).only_integer }
    end

    describe '#status' do
      it { should validate_presence_of(:status) }
      it { should define_enum_for(:status).with_values(%w[active inactive]).backed_by_column_of_type(:string) }
      it { should_not allow_values('null', 'none', 'empty').for(:status) }
    end
  end

  context 'associations' do
    it { should belong_to(:segment).optional }
    it { should have_many(:segments).class_name('Segment') }
  end
end
