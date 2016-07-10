class Product
  include Neo4j::ActiveNode

  property :name, type: String
  property :product_name, type: String
  property :description, type: String
  property :long_description, type: String
  property :upc, type: String
  property :matnr, type: String
  property :manufacturer_part_number, type: String
  property :country_of_origin, type: String
  property :item_pik, type: String
  property :summit_part_number, type: String
  property :uom, type: String, default: 'EA'
  property :min_qty, type: Integer, default: 1
  property :restricted, type: Neo4j::Shared::Boolean, default: false
  property :batch, type: Neo4j::Shared::Boolean, default: false

  has_many :out, :categories, type: :categories_products, model_class: :Category
end
