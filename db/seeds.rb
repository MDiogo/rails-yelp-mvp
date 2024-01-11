# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: "belgian"}
pizza_east =  {name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: "italian"}
chinatown =  {name: "ChinaTown", address: "23 Sisters Avenue, London SW1 45C", category: "chinese"}
pandaexpress =  {name: "Panda Express", address: "55 Beacon Tower, London SW18 $GL", category: "japanese"}
delphine = {name: "Delphine", address: "11 Westminster Rd, London E14 6VP", category: "french"}
[dishoom, pizza_east, chinatown, pandaexpress, delphine].each do |attributes|
  restaurant = Restaurant.create!(attributes)
end
