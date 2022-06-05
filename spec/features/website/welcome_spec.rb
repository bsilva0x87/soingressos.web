# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Welcome page', type: :feature do
  scenario 'with public welcome text' do
    visit root_path
    expect(page).to have_text('Website#index')
  end
end
