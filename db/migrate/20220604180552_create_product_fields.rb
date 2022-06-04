# frozen_string_literal: true

class CreateProductFields < ActiveRecord::Migration[7.0]
  def change
    create_table :product_fields, id: :uuid do |t|
      t.string :kind, limit: 32, index: true
      t.string :label, limit: 128
      t.text :options
      t.string :status, default: 'active', index: true, null: false, limit: 32

      t.uuid :product_id, foreign_key: true, index: true, null: false

      t.boolean :required, default: true
      t.string :slug, index: true

      t.timestamps
      t.datetime :deleted_at, index: true
    end
  end
end
