# frozen_string_literal: true

FactoryBot.define do
  factory :nova_xs_request, class: External::NovaXs::Request do
    credentials { build(:nova_xs_credentials) }
    values do
      {
        date: String(Date.today),
        travelers: {
          adt: 2,
          chd: 1,
          snr: 0
        }
      }
    end
  end
end
