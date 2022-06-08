# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'open-uri'

User.create(email: "reiko@gmail.com", password: "testing", first_name: "Reiko", last_name: "Ochiai", address: "17 Rix Road Officer")
User.create(email: "callum@gmail.com", password: "testing", first_name: "Callum", last_name: "Something", address: "20 Rix Road Officer")

file = URI.open('https://media.istockphoto.com/photos/wooden-cube-block-flipping-change-step-1-to-2-on-table-for-project-picture-id1334466448?b=1&k=20&m=1334466448&s=170667a&w=0&h=FbQ-bo4wlFTn6-FDZzcjtySH6mUVKpxEnrjD5KXNQuk=')
list1 = Listing.new(title: "step toy", collection_instruction: "I will drop it at front door of my house", user: User.all.sample)

list1.photo.attach(io: file, filename: "stepToy.png", content_type: 'image/png')

file = URI.open('https://images.unsplash.com/photo-1587132117816-061b35073a4e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8aXRlbXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60')
list2 = Listing.new(title: "Beautiful Wood Piece", collection_instruction: "I can meet you at dragon park to give you this", user: User.all.sample)
list2.photo.attach(io: file, filename: "wood.png", content_type: 'image/png')

file = URI.open('https://images.unsplash.com/photo-1586339392738-65847e399f7e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8aXRlbXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60')
list3 = Listing.new(title: "Sunglasses", collection_instruction: "I can leave this at front porch", user: User.all.sample)
list3.photo.attach(io: file, filename: "sunglasses.png", content_type: 'image/png')

file = URI.open('https://images.unsplash.com/photo-1521499892833-773a6c6fd0b8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8aXRlbXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60')
list4 = Listing.new(title: "Camera", collection_instruction: "I can leave this at front porch", user: User.all.sample)
list4.photo.attach(io: file, filename: "camera.png", content_type: 'image/png')

list1.save!
list3.save!
list2.save!
list4.save!

file = URI.open('https://images.unsplash.com/photo-1610847499832-918a1c3c6811?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=464&q=80')
list10 = Listing.new(title: "A photo of a Ferrari", collection_instruction: "Not a real Ferrari, just a photo for just $10! I will leave it on the driveway of my house.", user: User.all.sample)
list10.photo.attach(io: file, filename: "ferrari.png.png", content_type: 'image/png')

file = URI.open('https://images.unsplash.com/photo-1601392740426-907c7b028119?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1887&q=80')
list11 = Listing.new(title: "Arm chair (old)", collection_instruction: "Will leave out the front of garage.", user: User.all.sample)
list11.photo.attach(io: file, filename: "oldArmchair.png", content_type: 'image/png')

file = URI.open('https://images.unsplash.com/photo-1634798245965-03669c757183?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=327&q=80')
list12 = Listing.new(title: "Wooden stool", collection_instruction: "Will leave out on the pavement.", user: User.all.sample)
list12.photo.attach(io: file, filename: "woodenStool.png", content_type: 'image/png')

file = URI.open('https://images.unsplash.com/photo-1591935893481-4a5fa6671ec0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80')
list13 = Listing.new(title: "Wooden rocking chair", collection_instruction: "Will bring out on buyer arrival.", user: User.all.sample)
list13.photo.attach(io: file, filename: "woodenRockingChair.png", content_type: 'image/png')

file = URI.open('https://images.unsplash.com/photo-1533859401019-c5edb7a798ab?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=435&q=80')
list14 = Listing.new(title: "Old broken bike", collection_instruction: "Bike doesn't work, will leave on the front porch", user: User.all.sample)
list14.photo.attach(io: file, filename: "oldBrokenBike.png", content_type: 'image/png')

p "seeded"
