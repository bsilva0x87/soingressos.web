# frozen_string_literal: true

class CreateProductStockTrackings < ActiveRecord::Migration[7.0]
  def change
    create_table :product_stock_trackings, id: :uuid do |t|
      t.string :kind, null: false, index: true
      t.uuid :product_id, null: false, foreign_key: true, index: true
      t.string :description
      t.integer :quantity, default: 1

      t.string :origin, default: 'stock'
      t.string :ref, index: true

      t.timestamps
      t.datetime :deleted_at, index: true
    end
  end
end
