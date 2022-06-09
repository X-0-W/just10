# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'open-uri'

Review.destroy_all
Order.destroy_all
Listing.destroy_all
User.destroy_all

User.create!(email: "reiko@gmail.com", password: "testing", first_name: "Reiko", last_name: "Ochiai", address: "17 Rix Road Officer", phone: "0420123456")
User.create!(email: "callum@gmail.com", password: "testing", first_name: "Callum", last_name: "Middlemist", address: "Inspire 9, 43 Stewart Street, Richmond", phone: "0421123456")
User.create!(email: "xander@gmail.com", password: "testing", first_name: "Xander", last_name: "Something", address: "156, Badger Weir Road, Badger Creek, 3777", phone: "0422123456")
User.create!(email: "ethan@gmail.com", password: "testing", first_name: "Ethan", last_name: "Li", address: "Inspire 9, 43 Stewart Street, Richmond", phone: "0423123456")

users = User.all

random_user = users.sample
file = URI.open('https://media.istockphoto.com/photos/wooden-cube-block-flipping-change-step-1-to-2-on-table-for-project-picture-id1334466448?b=1&k=20&m=1334466448&s=170667a&w=0&h=FbQ-bo4wlFTn6-FDZzcjtySH6mUVKpxEnrjD5KXNQuk=')
list1 = Listing.new(title: "step toy", collection_instruction: "I will drop it at front door of my house", user: random_user, address: random_user.address)
list1.photo.attach(io: file, filename: "stepToy.png", content_type: 'image/png')
list1.save!
p "1 seeded"

random_user = users.sample
file = URI.open('https://images.unsplash.com/photo-1587132117816-061b35073a4e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8aXRlbXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60')
list2 = Listing.new(title: "Beautiful Wood Piece", collection_instruction: "I can meet you at dragon park to give you this", user: random_user, address: random_user.address)
list2.photo.attach(io: file, filename: "wood.png", content_type: 'image/png')
list2.save!
p "2 seeded"

random_user = users.sample
file = URI.open('https://images.unsplash.com/photo-1586339392738-65847e399f7e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8aXRlbXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60')
list3 = Listing.new(title: "Sunglasses", collection_instruction: "I can leave this at front porch", user: random_user, address: random_user.address)
list3.photo.attach(io: file, filename: "sunglasses.png", content_type: 'image/png')
list3.save!
p "3 seeded"

random_user = users.sample
file = URI.open('https://images.unsplash.com/photo-1521499892833-773a6c6fd0b8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8aXRlbXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60')
list4 = Listing.new(title: "Camera", collection_instruction: "I can leave this at front porch", user: random_user, address: random_user.address)
list4.photo.attach(io: file, filename: "camera.png", content_type: 'image/png')
list4.save!
p "4 seeded"

random_user = users.sample
file = URI.open('https://media.prod.bunnings.com.au/api/public/content/bc5c7d121ca747a0bba7fcf2764611b4?v=57b58873&t=w500dpr2')
list5 = Listing.new(title: "sun lounger", collection_instruction: "I will leave it beside the garage", user: random_user, address: random_user.address)
list5.photo.attach(io: file, filename: "sunlounger.png", content_type: 'image/png')
list5.save!
p "5 seeded"

random_user = users.sample
file = URI.open('https://www.ocamindustries.com.au/assets/full/TEEPEE-PINK.jpg?20210309045826')
list6 = Listing.new(title: "Teepee for kids", collection_instruction: "Please ring the front door (yellow bell) when you arrive", user: random_user, address: random_user.address)
list6.photo.attach(io: file, filename: "teepee.png", content_type: 'image/png')
list6.save!
p "6 seeded"

random_user = users.sample
file = URI.open('https://www.burley.com/wp-content/uploads/2018/11/MyKick-Pink-MAIN.jpg')
list7 = Listing.new(title: "pink kids bike", collection_instruction: "It will be left in the front garden", user: random_user, address: random_user.address)
list7.photo.attach(io: file, filename: "bike.jpg", content_type: 'image/jpg')
list7.save!
p "7 seeded"

random_user = users.sample
file = URI.open('https://i.etsystatic.com/6017061/r/il/a95967/881348688/il_fullxfull.881348688_79dt.jpg')
list8 = Listing.new(title: "Old gameboy - no games", collection_instruction: "Please call to arrange pick up", user: random_user, address: random_user.address)
list8.photo.attach(io: file, filename: "gameboy.jpg", content_type: 'image/jpg')
list8.save!
p "8 seeded"

random_user = users.sample
file = URI.open('https://image-cdn.hypb.st/https%3A%2F%2Fhypebeast.com%2Fimage%2F2021%2F10%2Fbored-ape-yacht-club-nft-3-4-million-record-sothebys-metaverse-0.jpg?w=960&cbr=1&q=90&fit=max')
list9 = Listing.new(title: "digital cartoon of ape", collection_instruction: "I can leave this at front porch", user: random_user, address: random_user.address)
list9.photo.attach(io: file, filename: "cartoon.jpg", content_type: 'image/jpg')
list9.save!
p "9 seeded"

random_user = users.sample
file = URI.open('https://images.unsplash.com/photo-1610847499832-918a1c3c6811?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=464&q=80')
list10 = Listing.new(title: "A photo of a Ferrari", collection_instruction: "Not a real Ferrari, just a photo for just $10! I will leave it on the driveway of my house.", user: random_user, address: random_user.address)
list10.photo.attach(io: file, filename: "ferrari.png.png", content_type: 'image/png')
list10.save!
p "10 seeded"

random_user = users.sample
file = URI.open('https://images.unsplash.com/photo-1601392740426-907c7b028119?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1887&q=80')
list11 = Listing.new(title: "Arm chair (old)", collection_instruction: "Will leave out the front of garage.", user: random_user, address: random_user.address)
list11.photo.attach(io: file, filename: "oldArmchair.png", content_type: 'image/png')
list11.save!
p "11 seeded"

random_user = users.sample
file = URI.open('https://images.unsplash.com/photo-1634798245965-03669c757183?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=327&q=80')
list12 = Listing.new(title: "Wooden stool", collection_instruction: "Will leave out on the pavement.", user: random_user, address: random_user.address)
list12.photo.attach(io: file, filename: "woodenStool.png", content_type: 'image/png')
list12.save!
p "12 seeded"

random_user = users.sample
file = URI.open('https://images.unsplash.com/photo-1591935893481-4a5fa6671ec0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80')
list13 = Listing.new(title: "Wooden rocking chair", collection_instruction: "Will bring out on buyer arrival.", user: random_user, address: random_user.address)
list13.photo.attach(io: file, filename: "woodenRockingChair.png", content_type: 'image/png')
list13.save!
p "13 seeded"

random_user = users.sample
file = URI.open('https://images.unsplash.com/photo-1533859401019-c5edb7a798ab?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=435&q=80')
list14 = Listing.new(title: "Old broken bike", collection_instruction: "Bike doesn't work, will leave on the front porch", user: random_user, address: random_user.address)
list14.photo.attach(io: file, filename: "oldBrokenBike.png", content_type: 'image/png')
list14.save!
p "14 seeded"

Order.create(listing: list11, user: User.all.sample, pickup_time: DateTime.new(2001, 2, 3, 4, 5, 6))
Order.create(listing: list14, user: User.all.sample, pickup_time: DateTime.new(2001, 2, 3, 4, 5, 6))
Order.create(listing: list3, user: User.all.sample, pickup_time: DateTime.new(2001, 2, 3, 4, 5, 6))
Order.create(listing: list5, user: User.all.sample, pickup_time: DateTime.new(2001, 2, 3, 4, 5, 6))
Order.create(listing: list7, user: User.all.sample, pickup_time: DateTime.new(2001, 2, 3, 4, 5, 6))
Order.create(listing: list9, user: User.all.sample, pickup_time: DateTime.new(2001, 2, 3, 4, 5, 6))

Listing.all.each { |listing| Order.create(listing: listing, user: User.all.sample, pickup_time: DateTime.new(2001, 2, 3, 4, 5, 6)) }
p "Orders seeded"
p "seed completed"
