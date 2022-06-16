# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Role, type: :model do
  context 'validations' do
    describe '#name' do
      it { should validate_presence_of(:name) }
      it { should validate_length_of(:name).is_at_least(4).is_at_most(128) }
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
    it { should have_many(:users).class_name('UserRole') }
  end
end
