# frozen_string_literal: true

class CreateStockTypes < ActiveRecord::Migration[7.0]
  def change
    create_table :stock_types, id: :uuid do |t|
      t.string :name, limit: 128
      t.string :description, limit: 240

      t.string :status, default: 'active', index: true, null: false, limit: 32

      t.timestamps
      t.datetime :deleted_at, index: true
    end
  end
end
