# frozen_string_literal: true

class CreateTickets < ActiveRecord::Migration[7.0]
  def change
    create_table :tickets, id: :uuid do |t|
      t.string :kind, index: true
      t.string :code, index: true, unique: true

      t.uuid :user_id, null: false, foreign_key: true, index: true
      t.uuid :product_id, null: false, foreign_key: true, index: true
      t.date :date
      t.json :metadata

      t.string :status, default: 'waiting', index: true, null: false, limit: 32

      t.datetime :expires_at
      t.datetime :validated_at, index: true

      t.string :reference, index: true

      t.timestamps
    end
  end
end
