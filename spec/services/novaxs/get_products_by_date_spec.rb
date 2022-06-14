# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Novaxs::GetProductsByDate, type: :service do
  describe '#call' do
    subject do
      described_class.new(endpoint:, credentials:, values: { date: I18n.l(Date.today) })
    end

    # Stub request to webmock disabled real network connection.
    before do
      stub_request(:post, endpoint)
        .with(body: /"login":"invalid-user-case"/)
        .to_return(status: 200, body: '{"erro": "Usuario nao informado"}')

      stub_request(:post, endpoint)
        .with(body: /"login":"invalid-token-case"/)
        .to_return(status: 200, body: '{"erro": "Token incorreto"}')

      stub_request(:post, endpoint)
        .with(body: /"login":"soingressos"/)
        .to_return(status: 200, body: json_data)
    end

    it 'returns error with invalid user' do
      subject.credentials[:login] = 'invalid-user-case'
      expect(subject.call).to eq({ erro: 'Usuario nao informado' })
    end

    it 'returns error with invalid token' do
      subject.credentials[:login] = 'invalid-token-case'
      expect(subject.call).to eq({ erro: 'Token incorreto' })
    end

    it 'returns a simple product data' do
      parsed_body = subject.call.first

      expect(parsed_body[:name]).to eq('Ingresso Individual')
      expect(parsed_body[:type]).to eq('Produto')
    end
  end

  private

  def endpoint
    'http://travel3.novaxs.com.br/api'
  end

  def credentials
    { login: 'soingressos', password: '123456', token: '5023188593B4D2EB82482DDADEC1759EFC302D80' }
  end

  def json_data
    file_fixture('novaxs/get_products_by_date.json').read
  end
end
