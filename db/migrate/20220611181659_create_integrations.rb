# frozen_string_literal: true

class CreateIntegrations < ActiveRecord::Migration[7.0]
  def change
    create_table :integrations, id: :uuid do |t|
      t.string :name, limit: 128
      t.string :description, limit: 240
      t.string :username, limit: 128
      t.string :password
      t.string :kind, limit: 64, index: true, null: false
      t.string :url, limit: 240
      t.string :token

      t.json :metadata

      t.string :status, default: 'active', index: true, null: false, limit: 32

      t.timestamps
    end
  end
end
