# frozen_string_literal: true

require 'capybara/rspec'

RSpec.configure do |config|
  config.before(:each, type: :system) do
    driven_by :rack_test
  end

  config.before(:each, type: :system, js: true) do
    driven_by :selenium_chrome_headless
  end
end

module Capybara
  class Session
    def submit(element)
      Capybara::RackTest::Form.new(driver, element.native).submit({})
    end
  end
end