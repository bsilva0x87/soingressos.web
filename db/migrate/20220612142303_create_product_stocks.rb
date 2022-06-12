# frozen_string_literal: true

class CreateProductStocks < ActiveRecord::Migration[7.0]
  def change
    create_table :product_stocks, id: :uuid do |t|
      t.uuid :product_id, null: false, foreign_key: true, index: true
      t.date :date, index: true
      t.integer :stock, default: 0
      t.decimal :price, precision: 10, scale: 2, default: 0.0

      t.boolean :blocked, default: false
      t.boolean :overbooking, default: false

      t.uuid :stock_type_id, null: false, foreign_key: true, index: true

      t.timestamps
    end
  end
end
