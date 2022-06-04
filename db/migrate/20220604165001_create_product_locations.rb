# frozen_string_literal: true

class CreateProductLocations < ActiveRecord::Migration[7.0]
  def change
    create_table :product_locations, id: :uuid do |t|
      t.string :address, limit: 240
      t.string :city, limit: 128
      t.string :state, limit: 128
      t.string :country, limit: 64

      t.string :description

      t.decimal :latitude,  precision: 10, scale: 6
      t.decimal :longitude, precision: 10, scale: 6

      t.uuid :product_id, foreign_key: true, index: true, null: false

      t.timestamps
      t.datetime :deleted_at, index: true
    end
  end
end
