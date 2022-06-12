# frozen_string_literal: true

class CreateCommissionRules < ActiveRecord::Migration[7.0]
  def change
    create_table :commission_rules, id: :uuid do |t|
      t.references :record, null: false, polymorphic: true, index: false

      t.string :name, null: false, index: true
      t.decimal :value, precision: 10, scale: 2, default: 0.0
      t.string :kind, null: false, index: true, default: 'percent'
      t.string :description

      t.index %i[record_type record_id name], name: 'index_comission_rules_uniqueness', unique: true

      t.timestamps
      t.datetime :deleted_at, index: true
    end
  end
end
