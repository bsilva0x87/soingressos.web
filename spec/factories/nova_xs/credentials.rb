# frozen_string_literal: true

FactoryBot.define do
  factory :nova_xs_credentials, class: External::NovaXs::Credentials do
    login { 'soingressos' }
    password { '123456' }
    token { 'F7D999B0AAE0768EBA7AEA1A06ED4AEA5B0D397C' }
  end
end
