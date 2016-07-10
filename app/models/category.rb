class Category
  include Neo4j::ActiveNode

  property :name, type: String

  has_one :out, :category, type: :category, model_class: :Category
  has_many :in, :products, type: :categories_products, model_class: :Product

  # Root Category Query
  #   MATCH (n:Category)<-[:category]-(c:Category)
  #   WHERE NOT (n)-[:category]->() RETURN n, count(c);
end
