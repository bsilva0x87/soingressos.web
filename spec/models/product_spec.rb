# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Product, type: :model do
  context 'validations' do
    describe '#name' do
      it { should validate_presence_of(:name) }
      it { should validate_length_of(:name).is_at_least(16).is_at_most(240) }
    end
  end

  context 'associations' do
    it { should belong_to(:company) }
  end
end
