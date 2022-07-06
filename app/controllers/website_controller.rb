# frozen_string_literal: true

class WebsiteController < ApplicationController
  before_action :change_locale

  def change_locale
    return if params[:locale].blank?

    locale = params[:locale].to_sym
    I18n.locale = locale if I18n.available_locales.include?(locale)
  end
end
