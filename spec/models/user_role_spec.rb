# frozen_string_literal: true

require 'rails_helper'

RSpec.describe UserRole, type: :model do
  context 'associations' do
    it { should belong_to(:user) }
    it { should belong_to(:role) }
  end
end
