class CreateUserRoles < ActiveRecord::Migration[7.0]
  def change
    create_table :user_roles, id: :uuid do |t|
      t.uuid :user_id, null: false, foreign_key: true
      t.uuid :role_id, null: false, foreign_key: true

      t.timestamps
    end
  end
end
