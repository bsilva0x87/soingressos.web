# frozen_string_literal: true

class CreateSegments < ActiveRecord::Migration[7.0]
  def change
    create_table :segments do |t|
      t.string :name, limit: 72
      t.string :description
      t.integer :index, default: 0
      t.uuid :segment_id, foreign_key: true, index: true

      t.string :slug, index: true, unique: true

      t.timestamps
      t.datetime :deleted_at, index: true
    end
  end
end
