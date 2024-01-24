# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Restaurant.create(name: "Chez Mae", address: "75010 Paris", category: "French")
Restaurant.create(name: "La Frite", address: "01050 Bruges", category: "Belgian")
Restaurant.create(name: "Super Sushi", address: "E18RU London", category: "Japanese")
Restaurant.create(name: "Diail Pizza", address: "D03 Dublin", category: "Italian")
Restaurant.create(name: "Noodlelicous", address: "75004 Paris", category: "Chinese")
