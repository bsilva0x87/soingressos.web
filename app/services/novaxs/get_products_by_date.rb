# frozen_string_literal: true

module Novaxs
  class GetProductsByDate
    attr_accessor :endpoint, :credentials, :values

    def initialize(endpoint: '', credentials: {}, values: {})
      @endpoint = endpoint
      @credentials = credentials
      @values = values
    end

    def call
      response = HTTP.post(endpoint, body:)
      JSON.parse(response.body, symbolize_names: true)
    end

    private

    def body
      JSON({ credentials:, method: 'getProductsByDate', values: })
    end
  end
end
