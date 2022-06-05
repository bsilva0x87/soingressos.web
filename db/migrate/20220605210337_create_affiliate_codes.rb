# frozen_string_literal: true

class CreateAffiliateCodes < ActiveRecord::Migration[7.0]
  def change
    create_table :affiliate_codes, id: :uuid do |t|
      t.string :code, index: true, unique: true, limit: 8
      t.uuid   :user_id, foreign_key: true, index: true
      t.string :status, default: 'active', index: true, null: false, limit: 32

      t.timestamps
    end
  end
end
