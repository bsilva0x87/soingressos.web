# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Order, type: :model do
  context 'associations' do
    it { should belong_to(:franchise).optional }
  end
end
