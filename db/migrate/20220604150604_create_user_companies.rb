class CreateUserCompanies < ActiveRecord::Migration[7.0]
  def change
    create_table :user_companies, id: :uuid do |t|
      t.uuid :user_id, null: false, foreign_key: true, index: true
      t.uuid :company_id, null: false, foreign_key: true, index: true
      t.uuid :role_id, foreign_key: true
      
      t.decimal :comission, precision: 4, scale: 2, default: 0
      
      t.string :status, default: 'active', index: true, null: false, limit: 32

      t.timestamps
    end
  end
end