# frozen_string_literal: true

require 'rails_helper'

RSpec.describe CompanySubdomain, type: :model do
  context 'validations' do
    subject { build(:company_subdomain) }
    
    describe '#subdomain' do
      it { should validate_presence_of(:subdomain) }
      it { should validate_uniqueness_of(:subdomain) }
    end

    describe '#status' do
      it { should validate_presence_of(:status) }
    
      it do 
        should define_enum_for(:status)
          .with_values({active: 'active', inactive: 'inactive'})
          .backed_by_column_of_type(:string)
      end
    end
  end

  context 'associations' do
    it { should belong_to(:company) }
  end
end
