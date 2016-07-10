# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

lights_category = Category.create name: 'Lights'
indoor_category = Category.create name: 'Indoor', category: lights_category
lamps_category  = Category.create name: 'Lamps', category: indoor_category

Product.create name: 'Nice Lamp', categories: [lights_category,
                                               indoor_category,
                                               lamps_category]
