# frozen_string_literal: true

require 'rails_helper'

RSpec.describe AffiliateCode, type: :model do
  context 'validations' do
    describe '#code' do
      it { should validate_presence_of(:code) }
      it { should validate_length_of(:code).is_equal_to(8) }
    end

    describe '#status' do
      it { should validate_presence_of(:status) }
      
      it do 
        should define_enum_for(:status)
          .with_values({active: 'active', inactive: 'inactive', blocked: 'blocked'})
          .backed_by_column_of_type(:string)
      end
    end
  end

  context 'associations' do
    it { should belong_to(:user) }
  end
end
