# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
category = Category.create([{ name: 'Phones', category_slug: 'phones' }, { name: 'Notebook', category_slug: 'notebook' }])
(1..30).each  do |i|
  Item.create(name: "Iphone#{i}", price: 10, description: 'cool phone', item_slug: "iphone#{i}", category_id: 1)
end

(1..30).each do |i|
  Item.create(name: "HP#{i}", price: 110, description: 'cool phone7', item_slug: "hp#{i}", category_id: 2)
end
