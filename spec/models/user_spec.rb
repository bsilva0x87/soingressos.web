# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  context 'validations' do
    describe '#first_name' do
      it { should validate_presence_of(:first_name) }
      it { should validate_length_of(:first_name).is_at_least(2).is_at_most(128) }
    end

    describe '#last_name' do
      it { should validate_presence_of(:last_name) }
      it { should validate_length_of(:last_name).is_at_least(2).is_at_most(128) }
    end

    describe '#username' do
      it { should validate_presence_of(:username) }
      it { should_not allow_values('', 'none', 'none@none').for(:username) }
    end

    describe '#password' do
      it { should validate_presence_of(:password) }
      it { should validate_length_of(:password).is_at_least(6).is_at_most(32) }
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
    it { should have_many(:roles).class_name('UserRole') }
    it { should have_many(:affiliate_codes) }
  end
end
