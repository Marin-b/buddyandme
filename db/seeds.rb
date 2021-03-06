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
user1 = User.create!(email: "cool@gmail.com", first_name: "Harry", last_name: "Black", language: "english", password: "password", birth_date: "23/03/1987", short_description: "Yeaahh", remote_avatar_url: "https://media.metrolatam.com/2018/08/07/nickfury-bd687e3884e14e83f2d0d09a7a184f5a-200x200.jpg" )
friend1 = Friend.create!(large_description: "The coolest guy in town", location: "Barcelona, Gracia", price_per_hour: 45, user: user1)

user2 = User.create!(email: "dope@gmail.com", first_name: "Betty", last_name: "Ford", language: "spanish", password: "password",  birth_date: "21/07/1969", short_description: "Cheers", remote_avatar_url: "https://vg-images.condecdn.net/image/2AzB6AW95Mp/crop/200/square/f/bbardot_v_23mar11_rex_b.jpg")
friend2 = Friend.create!(large_description: "Bottoms up with Betty. Yeah", location: "Barcelona, Raval", price_per_hour: 45, user: user2)

user3 = User.create!(email: "hot@gmail.com", first_name: "Mary", last_name: "Kardashian", language: "spanish", password: "password",  birth_date: "04/11/1993", short_description: "Pretty,pretty,pretty", remote_avatar_url: "http://www.prettydesigns.com/wp-content/uploads/2013/11/Long-Brunette-Ombre-Straight-Hairstyle-for-Schoolgirls-200x200.jpg")
friend3 = Friend.create!(large_description: "Nothing to complain about", location: "Barcelona, Poble Nou", price_per_hour: 105, user: user3)

user4 = User.create!(email: "crazy@gmail.com", first_name: "Nick", last_name: "Fou", language: "french", password: "password",  birth_date: "12/08/1975", short_description: "Lets go!", remote_avatar_url: "https://www.gannett-cdn.com/-mm-/3e1c444c26d9a1be4c7aea406fb36fb117453483/c=298-0-1003-705/local/-/media/2016/12/20/Brevard/Brevard/636178595092663578-GettyImages-135876396.jpg?width=200&height=200&fit=crop")
friend4 = Friend.create!(large_description: "An unforgetable experience starts with Nick", location: "Sitges", price_per_hour: 35, user: user4)

puts "Creating friendships"
friendship1 = Friendship.create!(total_price: 200, status: "Pending", start_date: "11/05/2019", end_date: "12/05/2019", start_hour: 1300, end_hour: 1600, user: user1, friend: friend1)

puts "Seeding done!"











