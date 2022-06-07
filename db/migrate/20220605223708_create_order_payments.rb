# frozen_string_literal: true

class CreateOrderPayments < ActiveRecord::Migration[7.0]
  def change
    create_table :order_payments, id: :uuid do |t|
      t.uuid :order_id, null: false, foreign_key: true, index: true

      t.string :kind, null: false, index: true
      t.string :provider
      t.string :currency, default: 'BRL', limit: 4
      t.text :metadata

      t.integer :installments, default: 1
      t.decimal :total, precision: 10, scale: 2, default: 0.0
      t.decimal :commission, precision: 10, scale: 2, default: 0.0
      t.string :status, default: 'waiting', index: true, null: false, limit: 32

      t.timestamps
    end
  end
end
