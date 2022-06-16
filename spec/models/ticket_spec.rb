# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Ticket, type: :model do
  context 'validations' do
    describe '#kind' do
      it { should validate_presence_of(:kind) }
      
      it do 
        should define_enum_for(:kind)
          .with_values({internal: 'internal', external: 'external'})
          .backed_by_column_of_type(:string)
      end
    end

    describe '#date' do
      it { should validate_presence_of(:date) }
    end

    describe '#status' do
      it { should validate_presence_of(:status) }
      
      it do 
        should define_enum_for(:status)
          .with_values({active: 'active', inactive: 'inactive', used: 'used', expired: 'expired'})
          .backed_by_column_of_type(:string)
      end
    end
  end

  context 'associations' do
    it { should belong_to(:user).optional }
    it { should belong_to(:product) }
  end
end
