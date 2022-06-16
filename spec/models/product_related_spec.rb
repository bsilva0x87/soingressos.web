# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ProductRelated, type: :model do
  context 'methods' do
    it { expect(described_class.table_name).to eq('product_related') }
  end

  context 'associations' do
    it { should belong_to(:product) }
    it { should belong_to(:record).class_name('Product') }
  end
end
