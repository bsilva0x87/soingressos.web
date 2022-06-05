# frozen_string_literal: true

class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders, id: :uuid do |t|
      t.string :code, index: true, unique: true
      t.decimal :value, precision: 10, scale: 2, default: 0.0
      t.decimal :total, precision: 10, scale: 2, default: 0.0
      t.decimal :commission, precision: 10, scale: 2, default: 0.0
      t.string :coupon, limit: 32
      t.decimal :discount, precision: 10, scale: 2, default: 0.0

      t.uuid :franchise_id, foreign_key: true, index: true

      t.timestamps
      t.datetime :deleted_at, index: true
    end
  end
end
