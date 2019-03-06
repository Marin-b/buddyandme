# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.new([{email: "cool@gmail.com"}, {first_name: "Harry"}, {last_name: "Black"}, {language: "English"}])
friend1 = Friend.new([{large_description: "The coolest guy in town"}, {location: "Gracia"}, {price_per_hour: 45}, {user: user1}])

user2 = User.new([{email: "dope@gmail.com"}, {first_name: "Betty"}, {last_name: "Ford"}, {language: "Spanish"}])
friend2 = Friend.new([{large_description: "Bottoms up with Betty. Yeah"}, {location: "Raval"}, {price_per_hour: 45}, {user: user2}])

user3 = User.new([{email: "hot@gmail.com"}, {first_name: "Mary"}, {last_name: "Kardashian"}, {language: "Spanish"}])
friend3 = Friend.new([{large_description: "Nothing to complain about"}, {location: "Poble Nou"}, {price_per_hour: 105}, {user: user3}])

user4 = User.new([{email: "crazy@gmail.com"}, {first_name: "Nick"}, {last_name: "Fou"}, {language: "French"}])
friend4 = Friend.new([{large_description: "An unforgetable experience starts with Nick"}, {location: "Sitges"}, {price_per_hour: 35},{ user: user4}])

friendship1 = Friendship.new([{total_price: 200 }, {status: "approved" }, {start_date: 11/05/2019}, {end_date: 12/05/2019 }, {start_hour: 1230}, {end_hour: 1600}, {user: user1}, {friend: friend1}])



