# frozen_string_literal: true

class ProductRelated < ApplicationRecord
  self.table_name = 'product_related'

  # Associations
  belongs_to :product
  belongs_to :record, class_name: 'Product'
end
