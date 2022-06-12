# frozen_string_literal: true

class CreateCompanyIntegrations < ActiveRecord::Migration[7.0]
  def change
    create_table :company_integrations, id: :uuid do |t|
      t.uuid :company_id, null: false, foreign_key: true
      t.uuid :integration_id, null: false, foreign_key: true
      t.string :chmod, limit: 4, default: '0777'

      t.timestamps
    end
  end
end
