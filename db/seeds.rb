# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



Listing.destroy_all
User.destroy_all

new_user1 = User.create!(email: "xander@live.com", password: "testing")
new_user2 = User.create!(email: "reiko@live.com", password: "testing")
new_user3 = User.create!(email: "callum@live.com", password: "testing")
new_user4 = User.create!(email: "ethan@live.com", password: "testing")

Listing.create!(title: "toy", collection_instruction: "pick up at front door", user: new_user1)
Listing.create!(title: "pen", collection_instruction: "pick up at frontyard", user: new_user1)
Listing.create!(title: "flower", collection_instruction: "knock the door before pick up", user: new_user1)
Listing.create!(title: "book", collection_instruction: "knock reiko's door", user: new_user2)
