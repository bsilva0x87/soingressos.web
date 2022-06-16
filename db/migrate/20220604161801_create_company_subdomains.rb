# frozen_string_literal: true

class CreateCompanySubdomains < ActiveRecord::Migration[7.0]
  def change
    create_table :company_subdomains, id: :uuid do |t|
      t.uuid :company_id, null: false, foreign_key: true, index: true
      t.string :subdomain, null: false, index: true
      t.string :status, default: 'active', index: true, null: false, limit: 32

      t.timestamps
      t.datetime :deleted_at, index: true

      t.index :subdomain, name: :index_subdomain_uniqueness, unique: true
    end
  end
end
