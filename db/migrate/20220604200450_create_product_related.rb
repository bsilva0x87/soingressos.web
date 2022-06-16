class CreateProductRelated < ActiveRecord::Migration[7.0]
  def change
    create_table :product_related, id: :uuid do |t|
      t.uuid :product_id, null: false, foreign_key: true, index: true
      t.string :record_type, null: false, index: true
      t.uuid :record_id, null: false, foreign_key: true, index: true

      t.timestamps
    end
  end
end
