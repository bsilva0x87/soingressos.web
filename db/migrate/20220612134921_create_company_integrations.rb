# frozen_string_literal: true

class CreateCompanyIntegrations < ActiveRecord::Migration[7.0]
  def change
    create_table :company_integrations, id: :uuid do |t|
      t.references :company, null: false, foreign_key: true, type: :uuid
      t.references :integration, null: false, foreign_key: true, type: :uuid
      t.string :chmod, limit: 4, default: '0777'

      t.timestamps
    end
  end
end
