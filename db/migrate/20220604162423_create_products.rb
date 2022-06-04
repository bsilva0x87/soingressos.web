# frozen_string_literal: true

class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products, id: :uuid do |t|
      t.string :name, limit: 240
      t.string :status, default: 'active', index: true, null: false, limit: 32
      
      t.uuid :company_id, null: false, foreign_key: true, index: true
      
      t.string :slug, index: true, unique: true
      
      t.timestamps
      t.datetime :deleted_at, index: true
    end
  end
end
