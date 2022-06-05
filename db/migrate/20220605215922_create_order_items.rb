# frozen_string_literal: true

class CreateOrderItems < ActiveRecord::Migration[7.0]
  def change
    create_table :order_items do |t|
      t.uuid :order_id, null: false, foreign_key: true
      t.uuid :product_id, null: false, foreign_key: true
      t.date :date
      t.string :description, limit: 240
      t.integer :amount, default: 0
      t.decimal :price, precision: 10, scale: 2, default: 0.0
      t.decimal :total, precision: 10, scale: 2, default: 0.0
      t.decimal :discount, precision: 10, scale: 2, default: 0.0

      t.timestamps
      t.datetime :deleted_at, index: true
    end
  end
end
