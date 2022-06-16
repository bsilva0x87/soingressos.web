class CreateIntegrationProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :integration_products, id: :uuid do |t|
      t.uuid :integration_id, null: false, foreign_key: true, index: true
      t.uuid :product_id, null: false, foreign_key: true, index: true
      t.json :metadata
      
      t.string :status, default: 'active', index: true, null: false, limit: 32

      t.timestamps
    end
  end
end
