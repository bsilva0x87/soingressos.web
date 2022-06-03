class CreateRegions < ActiveRecord::Migration[7.0]
  def change
    create_table :regions, id: :uuid do |t|
      t.string  :name, limit: 128
      t.boolean :active, default: true
      t.uuid :region_id, null: false, foreign_key: true
      t.string :slug, index: true, unique: true
      t.timestamps

      t.datetime :deleted_at, index: true
    end
  end
end
