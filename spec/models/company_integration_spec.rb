# frozen_string_literal: true

require 'rails_helper'

RSpec.describe CompanyIntegration, type: :model do
  context 'validations' do
    describe '#chmod' do
      it { should validate_presence_of(:chmod) }
      it { should validate_length_of(:chmod).is_equal_to(4) }
    end
  end

  context 'associations' do
    it { should belong_to(:company) }
    it { should belong_to(:integration) }
  end
end
