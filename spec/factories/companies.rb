# frozen_string_literal: true

FactoryBot.define do
  factory :company do
    type { 'Company' }
    name { 'Só Ingressos Agência de Turismo Eireli'}
    identifier { '39523171000130' }
    registration { '1023811210' }
    manager { 'Enio Caviquiole' }
    description {''}
    phone { '5432222022' }
    mobile { '549920222022' }
    country_code { '55' }
    locale { 'pt-BR' }
    status { 'active' }
  end

  factory :company_subdomain do
    company { create(:company) }
    subdomain { 'default' }
    status { 'active' }
  end
end