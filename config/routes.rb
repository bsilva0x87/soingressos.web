# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  root to: 'website#index'

  scope "(:locale)", locale: /br|en|es/, defaults: {locale: :br} do
  end
end
