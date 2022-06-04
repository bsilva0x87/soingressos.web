# frozen_string_literal: true

class CreateUserRoles < ActiveRecord::Migration[7.0]
  def change
    create_table :user_roles, id: :uuid do |t|
      t.uuid :user_id, null: false, foreign_key: true, index: true
      t.uuid :role_id, null: false, foreign_key: true, index: true

      t.timestamps null: false
    end
  end
end
