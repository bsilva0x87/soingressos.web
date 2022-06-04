# frozen_string_literal: true

class CreateProductMedia < ActiveRecord::Migration[7.0]
  def change
    create_table :product_media, id: :uuid do |t|
      t.string :kind, limit: 32, index: true
      t.string :value
      t.string :status, default: 'active', index: true, null: false, limit: 32

      t.uuid :product_id, null: false, foreign_key: true, index: true

      t.timestamps
    end
  end
end
