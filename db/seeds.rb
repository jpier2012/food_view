# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


american = Restaurant.create(name: "American Restaurant", cuisine: "American", outdoor_seating: true, child_friendly: true, created_by: 1)
chinese = Restaurant.create(name: "Chinese Restaurant", cuisine: "Chinese", open_bar: true, byob: true, child_friendly: true, created_by: 1)
thai = Restaurant.create(name: "Thai Restaurant", cuisine: "Thai", byob: true, outdoor_seating: true, created_by: 1)
mexican = Restaurant.create(name: "Mexican Restaurant", cuisine: "Mexican", created_by: 1)
french = Restaurant.create(name: "French Restaurant", cuisine: "French", open_bar: true, created_by: 1)
