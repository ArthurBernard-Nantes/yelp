# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
dishoom = { name: 'Dishoom', address: '7 Boundary St, London E2 7JE', phone_number: 123, category: 'french' }
pizza_east = { name: 'Pizza East', address: '56A Shoreditch High St', phone_number: 234, category: 'italian' }
song = { name: 'Song', address: 'Graslin', phone_number: 345, category: 'chinese' }
soleil_levant = { name: 'Soleil levant', address: 'Place Royale', phone_number: 456, category: 'japanese' }
chaudron_baveur = { name: 'Chaudron Baveur', address: 'Chemin de traverse', phone_number: 567, category: 'belgian' }

[ dishoom, pizza_east, song, soleil_levant, chaudron_baveur].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Finished!'
