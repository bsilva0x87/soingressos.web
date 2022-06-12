# frozen_string_literal: true

class CreateCompanies < ActiveRecord::Migration[7.0]
  def change
    create_table :companies, id: :uuid do |t|
      t.string :type, null: false, index: true
      t.string :name, limit: 128
      t.string :identifier, null: false, index: true, limit: 24
      t.string :registration, limit: 24
      t.string :manager, limit: 128
      t.string :description
      t.string :phone, limit: 24
      t.string :mobile, limit: 24
      t.string :country_code, limit: 8
      t.string :locale, limit: 8
      t.string :status, default: 'active', index: true, null: false, limit: 32

      t.uuid :address_id, foreign_key: true, index: true

      t.timestamps
      t.datetime :deleted_at, index: true

      t.index %i[type identifier], name: 'index_companies_type_identifier_uniqueness', unique: true
    end
  end
end
