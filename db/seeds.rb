# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create(email: "test@test.com", password: "password", password_confirmation: "password")
user2 = User.create(email: "test2@test.com", password: "password", password_confirmation: "password")

american = Restaurant.create(name: "Al's Beef", address: "Chicago, IL", cuisine: "American", outdoor_seating: true, child_friendly: true, created_by: user.id)
chinese = Restaurant.create(name: "Yen Yen", address: "Buffalo Grove, IL", cuisine: "Chinese", open_bar: true, byob: true, child_friendly: true, created_by: user.id)
thai = Restaurant.create(name: "Thai Frenzy", address: "All over the place", cuisine: "Thai", byob: true, outdoor_seating: true, created_by: user.id)
mexican = Restaurant.create(name: "Martin's Tacos", address: "Hanover, IL", cuisine: "Mexican", outdoor_seating: true, child_friendly: true, created_by: user2.id)
bbq = Restaurant.create(name: "Billy's BBQ", address: "Buffalo, NY", cuisine: "BBQ", open_bar: true, created_by: user2.id)
french = Restaurant.create(name: "Jean's Croissants", address: "Paris, France", cuisine: "French", open_bar: true, byob: true, created_by: user2.id)

user.dishes.create(name: "Cheeseburger", price: 10, restaurant: american)
user.dishes.create(name: "Kung Pao Chicken", price: 10, restaurant: chinese)
user.dishes.create(name: "Steak Tacos", price: 10, restaurant: mexican)

user2.dishes.create(name: "Pad Thai", price: 10, restaurant: thai)
user2.dishes.create(name: "Full Rack of Ribs", price: 10, restaurant: bbq)
user2.dishes.create(name: "Some fondant", price: 10, restaurant: french)