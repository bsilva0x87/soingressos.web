# frozen_string_literal: true

class CreateRegions < ActiveRecord::Migration[7.0]
  def change
    create_table :regions, id: :uuid do |t|
      t.string :name, limit: 128
      t.string :status, default: 'active', index: true, null: false, limit: 32

      t.uuid :region_id, index: true
      t.foreign_key :regions, column: :id

      t.string :slug, index: true, unique: true

      t.decimal :latitude,  precision: 10, scale: 6
      t.decimal :longitude, precision: 10, scale: 6

      t.timestamps
      t.datetime :deleted_at, index: true
    end
  end
end
