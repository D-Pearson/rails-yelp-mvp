# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "07895 784632", category: "chinese" }
pizza_east = { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "07895 784632", category: "italian" }
nandos = { name: "Nandos", address: "42 Whisper Ln, London E3 4DG,", phone_number: "07895 784632", category: "belgian" }
rasa = { name: "Rasa", address: "10 Church Street, London, E8 2PJ", phone_number: "07895 784632", category: "french" }
good_egg = { name: "Good Egg", address: "17 Church Street, London, E8 2PK", phone_number: "07895 784632", category: "japanese" }

[dishoom, pizza_east, nandos, rasa, good_egg].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"

puts "making reviews..."
dishoom = { rating: 5, content: "It is super nice and I like it" }
