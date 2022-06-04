# frozen_string_literal: true

# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 20_220_604_180_552) do
  # These are extensions that must be enabled in order to support this database
  enable_extension 'pgcrypto'
  enable_extension 'plpgsql'

  create_table 'addresses', id: :uuid, default: -> { 'gen_random_uuid()' }, force: :cascade do |t|
    t.string 'street', limit: 128
    t.string 'number', limit: 8
    t.string 'neighborhood', limit: 128
    t.string 'complement', limit: 72
    t.string 'city', limit: 128
    t.string 'state', limit: 128
    t.string 'country', limit: 64
    t.string 'zipcode', limit: 16
    t.string 'status', limit: 32, default: 'active', null: false
    t.decimal 'latitude', precision: 10, scale: 6
    t.decimal 'longitude', precision: 10, scale: 6
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.datetime 'deleted_at'
    t.index ['deleted_at'], name: 'index_addresses_on_deleted_at'
    t.index ['status'], name: 'index_addresses_on_status'
  end

  create_table 'companies', id: :uuid, default: -> { 'gen_random_uuid()' }, force: :cascade do |t|
    t.string 'name', limit: 128
    t.string 'identifier', limit: 24
    t.string 'registration', limit: 24
    t.string 'manager', limit: 128
    t.string 'description'
    t.string 'phone', limit: 24
    t.string 'mobile', limit: 24
    t.string 'country_code', limit: 8
    t.string 'locale', limit: 8
    t.string 'status', limit: 32, default: 'active', null: false
    t.uuid 'address_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.datetime 'deleted_at'
    t.index ['address_id'], name: 'index_companies_on_address_id'
    t.index ['deleted_at'], name: 'index_companies_on_deleted_at'
    t.index ['status'], name: 'index_companies_on_status'
  end

  create_table 'product_attributes', id: :uuid, default: -> { 'gen_random_uuid()' }, force: :cascade do |t|
    t.string 'kind', limit: 32
    t.string 'description'
    t.string 'status', limit: 32, default: 'active', null: false
    t.uuid 'product_id', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.datetime 'deleted_at'
    t.index ['deleted_at'], name: 'index_product_attributes_on_deleted_at'
    t.index ['kind'], name: 'index_product_attributes_on_kind'
    t.index ['product_id'], name: 'index_product_attributes_on_product_id'
    t.index ['status'], name: 'index_product_attributes_on_status'
  end

  create_table 'product_fields', id: :uuid, default: -> { 'gen_random_uuid()' }, force: :cascade do |t|
    t.string 'kind', limit: 32
    t.string 'label', limit: 128
    t.text 'options'
    t.string 'status', limit: 32, default: 'active', null: false
    t.uuid 'product_id', null: false
    t.boolean 'required', default: true
    t.string 'slug'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.datetime 'deleted_at'
    t.index ['deleted_at'], name: 'index_product_fields_on_deleted_at'
    t.index ['kind'], name: 'index_product_fields_on_kind'
    t.index ['product_id'], name: 'index_product_fields_on_product_id'
    t.index ['slug'], name: 'index_product_fields_on_slug'
    t.index ['status'], name: 'index_product_fields_on_status'
  end

  create_table 'product_locations', id: :uuid, default: -> { 'gen_random_uuid()' }, force: :cascade do |t|
    t.string 'address', limit: 240
    t.string 'city', limit: 128
    t.string 'state', limit: 128
    t.string 'country', limit: 64
    t.string 'description'
    t.decimal 'latitude', precision: 10, scale: 6
    t.decimal 'longitude', precision: 10, scale: 6
    t.uuid 'product_id', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.datetime 'deleted_at'
    t.index ['deleted_at'], name: 'index_product_locations_on_deleted_at'
    t.index ['product_id'], name: 'index_product_locations_on_product_id'
  end

  create_table 'product_media', id: :uuid, default: -> { 'gen_random_uuid()' }, force: :cascade do |t|
    t.string 'kind', limit: 32
    t.string 'value'
    t.string 'status', limit: 32, default: 'active', null: false
    t.uuid 'product_id', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.datetime 'deleted_at'
    t.index ['deleted_at'], name: 'index_product_media_on_deleted_at'
    t.index ['kind'], name: 'index_product_media_on_kind'
    t.index ['product_id'], name: 'index_product_media_on_product_id'
    t.index ['status'], name: 'index_product_media_on_status'
  end

  create_table 'products', id: :uuid, default: -> { 'gen_random_uuid()' }, force: :cascade do |t|
    t.string 'name', limit: 240
    t.text 'description'
    t.text 'extra'
    t.string 'status', limit: 32, default: 'active', null: false
    t.uuid 'company_id', null: false
    t.string 'slug'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.datetime 'deleted_at'
    t.index ['company_id'], name: 'index_products_on_company_id'
    t.index ['deleted_at'], name: 'index_products_on_deleted_at'
    t.index ['slug'], name: 'index_products_on_slug'
    t.index ['status'], name: 'index_products_on_status'
  end

  create_table 'regions', id: :uuid, default: -> { 'gen_random_uuid()' }, force: :cascade do |t|
    t.string 'name', limit: 128
    t.string 'status', limit: 32, default: 'active', null: false
    t.uuid 'region_id', null: false
    t.string 'slug'
    t.decimal 'latitude', precision: 10, scale: 6
    t.decimal 'longitude', precision: 10, scale: 6
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.datetime 'deleted_at'
    t.index ['deleted_at'], name: 'index_regions_on_deleted_at'
    t.index ['region_id'], name: 'index_regions_on_region_id'
    t.index ['slug'], name: 'index_regions_on_slug'
    t.index ['status'], name: 'index_regions_on_status'
  end

  create_table 'roles', id: :uuid, default: -> { 'gen_random_uuid()' }, force: :cascade do |t|
    t.string 'name', limit: 128
    t.text 'description'
    t.string 'status', limit: 32, default: 'active', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.datetime 'deleted_at'
    t.index ['deleted_at'], name: 'index_roles_on_deleted_at'
    t.index ['name'], name: 'index_roles_on_name'
    t.index ['status'], name: 'index_roles_on_status'
  end

  create_table 'segments', id: :uuid, default: -> { 'gen_random_uuid()' }, force: :cascade do |t|
    t.string 'name', limit: 72
    t.string 'description'
    t.integer 'index', default: 0
    t.uuid 'segment_id'
    t.string 'slug'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.datetime 'deleted_at'
    t.index ['deleted_at'], name: 'index_segments_on_deleted_at'
    t.index ['segment_id'], name: 'index_segments_on_segment_id'
    t.index ['slug'], name: 'index_segments_on_slug'
  end

  create_table 'user_companies', id: :uuid, default: -> { 'gen_random_uuid()' }, force: :cascade do |t|
    t.uuid 'user_id', null: false
    t.uuid 'company_id', null: false
    t.uuid 'role_id'
    t.decimal 'comission', precision: 4, scale: 2, default: '0.0'
    t.string 'status', limit: 32, default: 'active', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['company_id'], name: 'index_user_companies_on_company_id'
    t.index ['status'], name: 'index_user_companies_on_status'
    t.index ['user_id'], name: 'index_user_companies_on_user_id'
  end

  create_table 'user_roles', id: :uuid, default: -> { 'gen_random_uuid()' }, force: :cascade do |t|
    t.uuid 'user_id', null: false
    t.uuid 'role_id', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['role_id'], name: 'index_user_roles_on_role_id'
    t.index ['user_id'], name: 'index_user_roles_on_user_id'
  end

  create_table 'users', id: :uuid, default: -> { 'gen_random_uuid()' }, force: :cascade do |t|
    t.string 'first_name', limit: 128
    t.string 'middle_name', limit: 128
    t.string 'last_name', limit: 128
    t.string 'username', limit: 128, null: false
    t.string 'encrypted_password', default: '', null: false
    t.string 'reset_password_token'
    t.datetime 'reset_password_sent_at'
    t.datetime 'remember_created_at'
    t.integer 'sign_in_count', default: 0, null: false
    t.datetime 'current_sign_in_at'
    t.datetime 'last_sign_in_at'
    t.string 'current_sign_in_ip'
    t.string 'last_sign_in_ip'
    t.string 'confirmation_token'
    t.datetime 'confirmed_at'
    t.datetime 'confirmation_sent_at'
    t.string 'unconfirmed_email'
    t.integer 'failed_attempts', default: 0, null: false
    t.string 'unlock_token'
    t.datetime 'locked_at'
    t.string 'status', limit: 32, default: 'active', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.datetime 'deleted_at'
    t.index ['confirmation_token'], name: 'index_users_on_confirmation_token', unique: true
    t.index ['deleted_at'], name: 'index_users_on_deleted_at'
    t.index ['reset_password_token'], name: 'index_users_on_reset_password_token', unique: true
    t.index ['status'], name: 'index_users_on_status'
    t.index ['unlock_token'], name: 'index_users_on_unlock_token', unique: true
    t.index ['username'], name: 'index_users_on_username'
  end
end
