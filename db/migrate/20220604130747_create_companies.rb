# frozen_string_literal: true

class CreateCompanies < ActiveRecord::Migration[7.0]
  def change
    create_table :companies, id: :uuid do |t|
      t.string :name, limit: 128
      t.string :identifier, limit: 24
      t.string :registration, limit: 24
      t.string :manager, limit: 128
      t.string :description
      t.string :phone, limit: 24
      t.string :mobile, limit: 24
      t.string :country_code, limit: 8
      t.string :locale, limit: 8
      t.string :status, default: 'active', index: true, null: false, limit: 32

      t.uuid :address_id, index: true

      t.timestamps
      t.datetime :deleted_at, index: true
    end
  end
end
