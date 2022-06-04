# frozen_string_literal: true

class CreateProductAttributes < ActiveRecord::Migration[7.0]
  def change
    create_table :product_attributes, id: :uuid do |t|
      t.string :kind, limit: 32, index: true
      t.string :description
      t.string :status, default: 'active', index: true, null: false, limit: 32

      t.uuid :product_id, foreign_key: true, index: true, null: false

      t.timestamps
    end
  end
end
