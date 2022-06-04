# frozen_string_literal: true

class CreateRoles < ActiveRecord::Migration[7.0]
  def change
    create_table :roles, id: :uuid do |t|
      t.string :name, limit: 128, index: true
      t.text   :description
      t.string :status, default: 'active', index: true, null: false, limit: 32

      t.timestamps null: false
      t.datetime :deleted_at, index: true
    end
  end
end
