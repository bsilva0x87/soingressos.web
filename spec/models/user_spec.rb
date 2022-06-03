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
  end
end
