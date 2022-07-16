# frozen_string_literal: true

class CreateSliders < ActiveRecord::Migration[7.0]
  def change
    create_table :sliders, id: :uuid do |t|
      t.string :name, limit: 128
      t.string :description
      t.string :title, limit: 128
      t.string :caption
      t.string :call_to_action, limit: 48
      t.string :target

      t.uuid :franchise_id, null: false, foreign_key: true

      t.string :status, default: 'active', index: true, null: false, limit: 32

      t.timestamps
    end
  end
end
