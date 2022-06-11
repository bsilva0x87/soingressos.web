# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.1.2'

gem 'devise', '4.8.1'
gem 'importmap-rails', '1.1.0'
gem 'jbuilder', '2.11.5'
gem 'pg', '1.3.5'
gem 'puma', '5.6.4'
gem 'pundit', '2.2.0'
gem 'rails', '7.0.3'
gem 'simple_form', '5.1.0'
gem 'slim', '4.1.0'
gem 'sprockets-rails', '3.4.2'
gem 'stimulus-rails', '1.0.4'
gem 'turbo-rails', '1.1.1'
gem 'http', '5.0.4'
gem 'pagy', '5.10.1'
gem 'jwt', '2.4.1'
gem 'sidekiq', '6.5.0'

# Use Redis adapter to run Action Cable in production
gem 'redis', '4.6.0'

# Use Active Model has_secure_password
# https://guides.rubyonrails.org/active_model_basics.html#securepassword
gem 'bcrypt', '3.1.18'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '1.11.1', require: false

# Use Active Storage variants
# https://guides.rubyonrails.org/active_storage_overview.html#transforming-images
gem 'image_processing', '1.12.2'

gem 'tzinfo-data', '1.2022.1'

group :development, :test do
  gem 'debug', '1.5.0', platforms: %i[mri mingw x64_mingw]
end

group :development do
  gem 'bullet', '7.0.1'
  gem 'letter_opener', '1.8.1'
  gem 'rubocop', '1.30.0', require: false
  gem 'rubycritic', '4.7.0', require: false

  # Use console on exceptions pages
  # https://github.com/rails/web-console
  gem 'web-console', '4.2.0'
end

group :test do
  gem 'capybara', '3.37.1'
  gem 'factory_bot_rails', '6.2.0'
  gem 'guard-rspec', '4.7.3', require: false
  gem 'rspec-rails', '5.1.2', require: false
  gem 'shoulda-matchers', '5.1.0'
  gem 'simplecov', '0.21.2', require: false
  gem 'webmock', '3.14.0'
end
