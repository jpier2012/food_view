# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create(email: "test@test.com", password: "password", password_confirmation: "password")
user2 = User.create(email: "test2@test.com", password: "password", password_confirmation: "password")

american = Restaurant.create(name: "American Restaurant", cuisine: "American", outdoor_seating: true, child_friendly: true, created_by: user.id)
chinese = Restaurant.create(name: "Chinese Restaurant", cuisine: "Chinese", open_bar: true, byob: true, child_friendly: true, created_by: user.id)
thai = Restaurant.create(name: "Thai Restaurant", cuisine: "Thai", byob: true, outdoor_seating: true, created_by: user.id)
mexican = Restaurant.create(name: "Mexican Restaurant", cuisine: "Mexican", created_by: user.id)
french = Restaurant.create(name: "French Restaurant", cuisine: "French", open_bar: true, created_by: user.id)

american2 = Restaurant.create(name: "American Restaurant 2", cuisine: "American", child_friendly: true, created_by: user2.id)
chinese2 = Restaurant.create(name: "Chinese Restaurant 2", cuisine: "Chinese", open_bar: true, child_friendly: true, created_by: user2.id)
thai2 = Restaurant.create(name: "Thai Restaurant 2", cuisine: "Thai", byob: true, outdoor_seating: true, child_friendly: true, created_by: user2.id)
mexican2 = Restaurant.create(name: "Mexican Restaurant 2", cuisine: "Mexican", byob: true, outdoor_seating: true, created_by: user2.id)
french2 = Restaurant.create(name: "French Restaurant 2", cuisine: "French", open_bar: true, created_by: user2.id)

user.dishes.create(name: "Chinese Dish", price: 10, restaurant: american)
user.dishes.create(name: "American Dish", price: 10, restaurant: chinese)
user.dishes.create(name: "Thai Dish", price: 10, restaurant: thai)
user.dishes.create(name: "Mexican Dish", price: 10, restaurant: mexican)
user.dishes.create(name: "French Dish", price: 10, restaurant: french)

user.dishes.create(name: "Chinese Dish For User2's Restaurant", price: 10, restaurant: american2)
user.dishes.create(name: "American Dish For User2's Restaurant", price: 10, restaurant: chinese2)
user.dishes.create(name: "Thai Dish For User2's Restaurant", price: 10, restaurant: thai2)
user.dishes.create(name: "Mexican Dish For User2's Restaurant", price: 10, restaurant: mexican2)
user.dishes.create(name: "French Dish For User2's Restaurant", price: 10, restaurant: french2)

user2.dishes.create(name: "Chinese Dish 2", price: 10, restaurant: american2)
user2.dishes.create(name: "American Dish 2", price: 10, restaurant: chinese2)
user2.dishes.create(name: "Thai Dish 2", price: 10, restaurant: thai2)
user2.dishes.create(name: "Mexican Dish 2", price: 10, restaurant: mexican2)
user2.dishes.create(name: "French Dish 2", price: 10, restaurant: french2)

user2.dishes.create(name: "Chinese Dish For User1's Restaurant", price: 10, restaurant: american)
user2.dishes.create(name: "American Dish For User1's Restaurant", price: 10, restaurant: chinese)
user2.dishes.create(name: "Thai Dish For User1's Restaurant", price: 10, restaurant: thai)
user2.dishes.create(name: "Mexican Dish For User1's Restaurant", price: 10, restaurant: mexican)
user2.dishes.create(name: "French Dish For User1's Restaurant", price: 10, restaurant: french)