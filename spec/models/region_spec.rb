# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Region, type: :model do
  context 'validations' do
    describe '#name' do
      it { should validate_presence_of(:name) }
      it { should validate_length_of(:name).is_at_least(4).is_at_most(128) }
    end
  end

  context 'associations' do
    it { should belong_to(:region).class_name('Region') }
    it { should have_many(:regions).class_name('Region') }
  end
end
