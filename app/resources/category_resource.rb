class CategoryResource < JSONAPI::Resource
    immutable

    key_type :string

    attribute :name

    has_many :products

    has_one :category
end
