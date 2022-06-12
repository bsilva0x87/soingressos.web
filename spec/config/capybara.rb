# frozen_string_literal: true

require 'capybara/rspec'

RSpec.configure do |config|
  config.before(:each, type: :system, js: true) do
    driven_by :selenium, using: :chrome, options: {
      browser: :remote,
      url: "http://#{ENV['SELENIUM_REMOTE_HOST']}:4444/wd/hub",
      desired_capabilities: :chrome
    }

    Capybara.server_host = `/sbin/ip route|awk '/scope/ { print $9 }'`.strip
    Capybara.server_port = "43447"

    session_server = Capybara.current_session.server
    Capybara.app_host = "http://#{session_server.host}:#{session_server.port}"
  end
end
