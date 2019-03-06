# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "destroying all users"
User.destroy_all

puts "destroying all friends"
Friend.destroy_all

puts "destroying all friendships"
Friendship.destroy_all


puts "Creating users & friends "
user1 = User.create!(email: "cool@gmail.com", first_name: "Harry", last_name: "Black", language: "english", password: 131415)
friend1 = Friend.create!(large_description: "The coolest guy in town", location: "Barcelona, Gracia", price_per_hour: 45, user: user1)

user2 = User.create!(email: "dope@gmail.com", first_name: "Betty", last_name: "Ford", language: "Spanish", password: 34290890)
friend2 = Friend.create!(large_description: "Bottoms up with Betty. Yeah", location: "Barcelona, Raval", price_per_hour: 45, user: user2)

user3 = User.create!(email: "hot@gmail.com", first_name: "Mary", last_name: "Kardashian", language: "Spanish", password: 5490822)
friend3 = Friend.create!(large_description: "Nothing to complain about", location: "Barcelona, Poble Nou", price_per_hour: 105, user: user3)

user4 = User.create!(email: "crazy@gmail.com", first_name: "Nick", last_name: "Fou", language: "French", password: 2323232323)
friend4 = Friend.create!(large_description: "An unforgetable experience starts with Nick", location: "Sitges", price_per_hour: 35, user: user4)

puts "Creating friendships"
friendship1 = Friendship.create!(total_price: 200, status: "approved", start_date: "11/05/2019", end_date: "12/05/2019", start_hour: 1300, end_hour: 1600, user: user1, friend: friend1)

puts "Seeding done!"



