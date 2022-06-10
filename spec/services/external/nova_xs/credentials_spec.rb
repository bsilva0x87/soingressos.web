# frozen_string_literal: true

require 'rails_helper'

RSpec.describe External::NovaXs::Credentials, type: :model do
  context 'validations' do
    describe '#login' do
      it { should validate_presence_of(:login) }
      it { should validate_length_of(:login).is_at_least(8).is_at_most(64) }
    end

    describe '#password' do
      it { should validate_presence_of(:password) }
      it { should validate_length_of(:password).is_at_least(6).is_at_most(72) }
    end

    describe '#token' do
      it { should validate_presence_of(:token) }
      it { should validate_length_of(:token).is_at_least(40) }
    end
  end
end
