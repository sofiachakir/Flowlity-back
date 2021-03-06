# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

10.times do |i|

	product = Product.create(name: Faker::Commerce.product_name)
	puts "Product #{i+1} created"
	
	50.times do |j|
		InventoryLevel.create(
			product: product, 
			inventory_level: rand(1..10), 
			date: Faker::Date.between(from: '2020-05-01', to: '2020-08-01')
		)
		puts "> InventoryLevel #{j+1} created for Product #{i+1}"
	end

	puts "-" * 60
end

puts "Seed done"