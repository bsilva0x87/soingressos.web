# frozen_string_literal: true

require 'simplecov'

SimpleCov.start 'rails' do
  add_filter ['app/channels', 'app/mailers', 'app/jobs']
end