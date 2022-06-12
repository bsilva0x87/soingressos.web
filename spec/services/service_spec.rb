# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Service, type: :service do
  context 'methods' do
    subject { Service.new(a: 1, b: 2) }

    describe '#exec' do
      # TODO: The #call method was not implemented yet, so Service#exec will be nil.
      it { expect(Service.exec).to be_nil }
    end

    describe '#attributes' do
      it { expect(subject.attributes).to be_an_instance_of(Hash) }
    end
  end
end
