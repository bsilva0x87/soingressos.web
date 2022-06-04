# frozen_string_literal: true

class CreateAddresses < ActiveRecord::Migration[7.0]
  def change
    create_table :addresses, id: :uuid do |t|
      t.string :street, limit: 128
      t.string :number, limit: 8
      t.string :neighborhood, limit: 128
      t.string :complement, limit: 72
      t.string :city, limit: 128
      t.string :state, limit: 128
      t.string :country, limit: 128
      t.string :zipcode, limit: 16
      t.string :status,default: 'active', index: true, null: false, limit: 32

      t.decimal :latitude,  precision: 10, scale: 6
      t.decimal :longitude, precision: 10, scale: 6

      t.timestamps
      t.datetime :deleted_at, index: true
    end
  end
end
