# frozen_string_literal: true

class CreateOrderCustomers < ActiveRecord::Migration[7.0]
  def change
    create_table :order_customers, id: :uuid do |t|
      t.uuid :order_id, null: false, foreign_key: true, index: true

      t.string :name, limit: 128
      t.string :email, limit: 128
      t.string :phone, limit: 18
      t.string :mobile, limit: 18
      t.date :birthdate

      t.string :identifier, limit: 24
      t.string :document, limit: 24

      t.string :street, limit: 128
      t.string :number, limit: 8
      t.string :neighborhood, limit: 128
      t.string :complement, limit: 72
      t.string :city, limit: 128
      t.string :state, limit: 128
      t.string :country, limit: 64
      t.string :zipcode, limit: 16

      t.timestamps
    end
  end
end
