class ProductResource < JSONAPI::Resource
  immutable

  key_type :string

  attribute :name
  attribute :product_name
  attribute :description
  attribute :long_description
  attribute :upc
  attribute :matnr
  attribute :manufacturer_part_number
  attribute :country_of_origin
  attribute :item_pik
  attribute :summit_part_number
  attribute :uom
  attribute :min_qty
  attribute :restricted
  attribute :batch

  has_many :categories
end
