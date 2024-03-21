# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Profile.destroy_all
User.destroy_all
puts 'Creating Users Seeds...'
user1 = User.create!(email: 'jean@example.com', password: 'password1')
user2 = User.create!(email: 'lucas@example.com', password: 'password2')
user3 = User.create!(email: 'zoe@example.com', password: 'password3')
puts 'Done'
