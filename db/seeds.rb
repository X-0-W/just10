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
Message.destroy_all
User.destroy_all

user_reiko = User.create!(email: "reiko@gmail.com", password: "testing", first_name: "Reiko", last_name: "Ochiai", address: "17 Rix Road, Officer, Vic 3809", phone: "0420123456")
file = URI.open('https://avatars.githubusercontent.com/u/97565823?v=4')
user_reiko.photo.attach(io: file, filename: "reiko.png", content_type: 'image/png')
user_reiko.save!
p "reiko seeded"

user_callum = User.create!(email: "callum@gmail.com", password: "testing", first_name: "Callum", last_name: "Middlemist", address: "37 Lusher Rd, Croydon, VIC 3136", phone: "0421123456")
file = URI.open('https://avatars.githubusercontent.com/u/37198517?v=4')
user_callum.photo.attach(io: file, filename: "callum.png", content_type: 'image/png')
user_callum.save!
p "callum seeded"

user_xander = User.create!(email: "xander@gmail.com", password: "testing", first_name: "Xander", last_name: "Wellingham", address: "38 Garnet Street, Brunswick, Vic 3056", phone: "0422123456")
file = URI.open('https://avatars.githubusercontent.com/u/77281250?v=4')
user_xander.photo.attach(io: file, filename: "xander.png", content_type: 'image/png')
user_xander.save!
p "xander seeded"

user_ethan = User.create!(email: "ethan@gmail.com", password: "testing", first_name: "Ethan", last_name: "Li", address: "43 Stewart St, Richmond VIC 3121", phone: "0423123456")
file = URI.open('https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1649669430/lineqcef3quii49ewg5j.jpg')
user_ethan.photo.attach(io: file, filename: "ethan.jpg", content_type: 'image/jpg')
user_ethan.save!
p "ethan seeded"

user_julien = User.create!(email: "julienc@gmail.com", password: "testing", first_name: "Julien", last_name: "Chagnon", address: "9 Maffra St, Coolaroo VIC 3048", phone: "0423123456")
file = URI.open('https://avatars.githubusercontent.com/u/50136284?v=4')
user_julien.photo.attach(io: file, filename: "julien.jpg", content_type: 'image/jpg')
user_julien.save!
p "julien seeded"

user_neil = User.create!(email: "neil@gmail.com", password: "testing", first_name: "Neil", last_name: "Chen", address: "Bennelong Point, Sydney NSW 2000", phone: "0423123456")
file = URI.open('https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1650542650/pr9pvkvqj6nversopejr.jpg')
user_neil.photo.attach(io: file, filename: "neil.jpg", content_type: 'image/jpg')
user_neil.save!
p "neil seeded"

user_aren = User.create!(email: "aren@gmail.com", password: "testing", first_name: "Aren", last_name: "Clissold", address: "18 Irving St, Footscray VIC 3011", phone: "0423123456")
file = URI.open('https://avatars.githubusercontent.com/u/72479887?v=4')
user_aren.photo.attach(io: file, filename: "aren.jpg", content_type: 'image/jpg')
user_aren.save!
p "aren seeded"

user_shannon = User.create!(email: "shannon@gmail.com", password: "testing", first_name: "Shannon", last_name: "Gordon", address: "25 McCarthy Rd, Monbulk VIC 3793", phone: "0423123456")
file = URI.open('https://avatars.githubusercontent.com/u/94883494?v=4')
user_shannon.photo.attach(io: file, filename: "shannon.jpg", content_type: 'image/jpg')
user_shannon.save!
p "shannon seeded"

user_yujia = User.create!(email: "yujia@gmail.com", password: "testing", first_name: "Yujia", last_name: "Gu", address: "North Terrace, Adelaide SA 5000", phone: "0423123456")
file = URI.open('https://avatars.githubusercontent.com/u/96090501?v=4')
user_yujia.photo.attach(io: file, filename: "yujia.jpg", content_type: 'image/jpg')
user_yujia.save!
p "yujia seeded"

user_Yaron = User.create!(email: "Yaron@gmail.com", password: "testing", first_name: "Yaron", last_name: "Kraushar", address: "100 Shiralee Rd, Orange NSW 2800", phone: "0423123456")
file = URI.open('https://avatars.githubusercontent.com/u/65701682?v=4')
user_Yaron.photo.attach(io: file, filename: "Yaron.jpg", content_type: 'image/jpg')
user_Yaron.save!
p "Yaron seeded"

user_leah = User.create!(email: "leah@gmail.com", password: "testing", first_name: "Leah", last_name: "Moesch", address: "99 Rose St, Fitzroy VIC 3065", phone: "0423123456")
file = URI.open('https://avatars.githubusercontent.com/u/102561039?v=4')
user_leah.photo.attach(io: file, filename: "leah.jpg", content_type: 'image/jpg')
user_leah.save!
p "leah seeded"

user_kevin = User.create!(email: "kevin@gmail.com", password: "testing", first_name: "Kevin", last_name: "Nguyen", address: "162 Somerville Rd, Yarraville VIC 3013", phone: "0423123456")
file = URI.open('https://avatars.githubusercontent.com/u/49255634?v=4')
user_kevin.photo.attach(io: file, filename: "kevin.jpg", content_type: 'image/jpg')
user_kevin.save!
p "kevin seeded"

user_julien = User.create!(email: "julienv@gmail.com", password: "testing", first_name: "julien", last_name: "Voraz", address: "17 Progress St, Dandenong South VIC 3175", phone: "0423123456")
file = URI.open('https://avatars.githubusercontent.com/u/102274282?v=4')
user_julien.photo.attach(io: file, filename: "julien.jpg", content_type: 'image/jpg')
user_julien.save!
p "julien seeded"

user_hayden = User.create!(email: "hayden@gmail.com", password: "testing", first_name: "Hayden", last_name: "Walker", address: "136 Weston St, Brunswick East VIC 3057", phone: "0423123456")
file = URI.open('https://avatars.githubusercontent.com/u/62589313?v=4')
user_hayden.photo.attach(io: file, filename: "hayden.jpg", content_type: 'image/jpg')
user_hayden.save!
p "hayden seeded"

user_caz = User.create!(email: "caz@gmail.com", password: "testing", first_name: "Caz", last_name: "Wong", address: "Mount Buller Tourists Road, Mirimbah VIC 3722", phone: "0423123456")
file = URI.open('https://avatars.githubusercontent.com/u/102901545?v=4')
user_caz.photo.attach(io: file, filename: "caz.jpg", content_type: 'image/jpg')
user_caz.save!
p "caz seeded"

users = User.all

random_user = users.sample
file = URI.open('https://media.istockphoto.com/photos/wooden-cube-block-flipping-change-step-1-to-2-on-table-for-project-picture-id1334466448?b=1&k=20&m=1334466448&s=170667a&w=0&h=FbQ-bo4wlFTn6-FDZzcjtySH6mUVKpxEnrjD5KXNQuk=')
list1 = Listing.new(title: "step Kids", collection_instruction: "I will drop it at front door of my house", user: random_user, address: random_user.address, tag_list: "Kids" )
list1.photo.attach(io: file, filename: "stepKids.png", content_type: 'image/png')
list1.save!
p "1 seeded"

random_user = users.sample
file = URI.open('https://images.unsplash.com/photo-1587132117816-061b35073a4e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8aXRlbXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60')
list2 = Listing.new(title: "Beautiful Wood Piece", collection_instruction: "I can meet you at dragon park to give you this", user: random_user, address: random_user.address, tag_list: "Decoration")
list2.photo.attach(io: file, filename: "wood.png", content_type: 'image/png')
list2.save!
p "2 seeded"

random_user = users.sample
file = URI.open('https://images.unsplash.com/photo-1586339392738-65847e399f7e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8aXRlbXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60')
list3 = Listing.new(title: "Sunglasses", collection_instruction: "I can leave this at front porch", user: random_user, address: random_user.address, tag_list: "Fashion" )
list3.photo.attach(io: file, filename: "sunglasses.png", content_type: 'image/png')
list3.save!
p "3 seeded"

random_user = users.sample
file = URI.open('https://images.unsplash.com/photo-1521499892833-773a6c6fd0b8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8aXRlbXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60')
list4 = Listing.new(title: "Camera", collection_instruction: "I can leave this at front porch", user: random_user, address: random_user.address, tag_list: "Miscellaneous")
list4.photo.attach(io: file, filename: "camera.png", content_type: 'image/png')
list4.save!
p "4 seeded"

random_user = users.sample
file = URI.open('https://media.prod.bunnings.com.au/api/public/content/bc5c7d121ca747a0bba7fcf2764611b4?v=57b58873&t=w500dpr2')
list5 = Listing.new(title: "sun lounger", collection_instruction: "I will leave it beside the garage", user: random_user, address: random_user.address, tag_list: "Miscellaneous")
list5.photo.attach(io: file, filename: "sunlounger.png", content_type: 'image/png')
list5.save!
p "5 seeded"

random_user = users.sample
file = URI.open('https://www.ocamindustries.com.au/assets/full/TEEPEE-PINK.jpg?20210309045826')
list6 = Listing.new(title: "Teepee for kids", collection_instruction: "Please ring the front door (yellow bell) when you arrive", user: random_user, address: random_user.address, tag_list: "Miscellaneous")
list6.photo.attach(io: file, filename: "teepee.png", content_type: 'image/png')
list6.save!
p "6 seeded"

random_user = users.sample
file = URI.open('https://www.burley.com/wp-content/uploads/2018/11/MyKick-Pink-MAIN.jpg')
list7 = Listing.new(title: "pink kids bike", collection_instruction: "It will be left in the front garden", user: random_user, address: random_user.address, tag_list: "Exercise" )
list7.photo.attach(io: file, filename: "bike.jpg", content_type: 'image/jpg')
list7.save!
p "7 seeded"

random_user = users.sample
file = URI.open('https://i.etsystatic.com/6017061/r/il/a95967/881348688/il_fullxfull.881348688_79dt.jpg')
list8 = Listing.new(title: "Old gameboy - no games", collection_instruction: "Please call to arrange pick up", user: random_user, address: random_user.address, tag_list: "Kids")
list8.photo.attach(io: file, filename: "gameboy.jpg", content_type: 'image/jpg')
list8.save!
p "8 seeded"

random_user = users.sample
file = URI.open('https://image-cdn.hypb.st/https%3A%2F%2Fhypebeast.com%2Fimage%2F2021%2F10%2Fbored-ape-yacht-club-nft-3-4-million-record-sothebys-metaverse-0.jpg?w=960&cbr=1&q=90&fit=max')
list9 = Listing.new(title: "digital cartoon of ape", collection_instruction: "I can leave this at front porch", user: random_user, address: random_user.address, tag_list: "Decoration")
list9.photo.attach(io: file, filename: "cartoon.jpg", content_type: 'image/jpg')
list9.save!
p "9 seeded"

random_user = users.sample
file = URI.open('https://images.unsplash.com/photo-1610847499832-918a1c3c6811?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=464&q=80')
list10 = Listing.new(title: "A photo of a Ferrari", collection_instruction: "Not a real Ferrari, just a photo for just $10! I will leave it on the driveway of my house.", user: random_user, address: random_user.address,tag_list: "Decoration")
list10.photo.attach(io: file, filename: "ferrari.png.png", content_type: 'image/png')
list10.save!
p "10 seeded"

random_user = users.sample
file = URI.open('https://images.unsplash.com/photo-1601392740426-907c7b028119?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1887&q=80')
list11 = Listing.new(title: "Arm chair (old)", collection_instruction: "Will leave out the front of garage.", user: random_user, address: random_user.address, tag_list: "Furniture")
list11.photo.attach(io: file, filename: "oldArmchair.png", content_type: 'image/png')
list11.save!
p "11 seeded"

random_user = users.sample
file = URI.open('https://images.unsplash.com/photo-1634798245965-03669c757183?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=327&q=80')
list12 = Listing.new(title: "Wooden stool", collection_instruction: "Will leave out on the pavement.", user: random_user, address: random_user.address, tag_list: "Furniture")
list12.photo.attach(io: file, filename: "woodenStool.png", content_type: 'image/png')
list12.save!
p "12 seeded"

random_user = users.sample
file = URI.open('https://images.unsplash.com/photo-1591935893481-4a5fa6671ec0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80')
list13 = Listing.new(title: "Wooden rocking chair", collection_instruction: "Will bring out on buyer arrival.", user: random_user, address: random_user.address, tag_list: "Furniture")
list13.photo.attach(io: file, filename: "woodenRockingChair.png", content_type: 'image/png')
list13.save!
p "13 seeded"

random_user = users.sample
file = URI.open('https://images.unsplash.com/photo-1533859401019-c5edb7a798ab?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=435&q=80')
list14 = Listing.new(title: "Old broken bike", collection_instruction: "Bike doesn't work, will leave on the front porch", user: random_user, address: random_user.address, tag_list: "Exercise")
list14.photo.attach(io: file, filename: "oldBrokenBike.png", content_type: 'image/png')
list14.save!
p "14 seeded"

# assigns an order to a random user for each listing
2.times do
  Listing.all.each do |listing|
    # Gets random user
    user = User.all.sample
    # If the random user created the listing then don't create order
    if (user.listings.include? listing) == false
      # Creates a new order with the current listing in the loop as well as the random user.
      Order.create(listing: listing, user: user, pickup_time: DateTime.new(2022, 2, 3, 4, 5, 6))
    end
  end
end

p "Orders seeded"

file = URI.open('https://static.wixstatic.com/media/a55d63_51410a46cedb4ce1b9bc9491bd041eb8~mv2.jpeg/v1/fill/w_400,h_278,al_c,q_80,usm_0.66_1.00_0.01,enc_auto/Garden%20Soil.jpeg')
list15 = Listing.new(title: "rocks", collection_instruction: "bag of rocks", user: user_ethan, address: user_ethan.address)
list15.photo.attach(io: file, filename: "rocks.png", content_type: 'image/png')
list15.save!

# Order.create(listing: Listing.last, user: user_callum, pickup_time: DateTime.now, status: 2)
# Review.create(order: Order.last, approval: true)
p "Review seeded"

file = URI.open('https://static.wixstatic.com/media/a55d63_51410a46cedb4ce1b9bc9491bd041eb8~mv2.jpeg/v1/fill/w_400,h_278,al_c,q_80,usm_0.66_1.00_0.01,enc_auto/Garden%20Soil.jpeg')
list15 = Listing.new(title: "rocks", collection_instruction: "bag of rocks", user: user_xander, address: user_xander.address)
list15.photo.attach(io: file, filename: "rocks.png", content_type: 'image/png')
list15.save!

# Order.create(listing: Listing.last, user: user_callum, pickup_time: DateTime.now, status: 2)
# Review.create(order: Order.last, approval: false)
p "Review seeded"

p "seed completed"

salt_lamp = 'https://i.ebayimg.com/images/g/jQoAAOSwS7RhBWZX/s-l500.jpg'
lava_lamp = 'https://i.ebayimg.com/images/g/YWUAAOSw9SJdA0BF/s-l500.jpg'
pot = 'https://i.ebayimg.com/thumbs/images/g/tvUAAOSwpqJingpX/s-l225.webp'
stool = 'https://images.unsplash.com/photo-1503602642458-232111445657?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8d29vZCUyMHN0b29sfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60'
tools = 'https://images.unsplash.com/photo-1508872558182-ffc7f1b387f9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8b2xkJTIwdG9vbHN8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60'
kettle = 'https://images.unsplash.com/photo-1594213114663-d94db9b17125?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjR8fHBvdHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=60'
vase_flower = 'https://images.unsplash.com/photo-1554577621-1a3def0b656c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dmFzZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=60'
bean_bag = 'https://kmartau.mo.cloudinary.net/f09095db-dbb0-498c-aeaf-eeb6bf087902.jpg?tx=w_600,h_600'
golf_clubs = 'https://clubhouse.swingu.com/wp-content/uploads/2017/03/oldestgolfclubsale.jpg'
suitcase = 'http://t2.gstatic.com/shopping?q=tbn:ANd9GcQsZcJNqyxH4l0oSTLPs4GlCoXMMauw0mGKdmaowFippD90Wz75KTlK0PeH5mtCDTTwGdXK2WY4_Q4QRqtlaTnHuXoyZiNEiB5PCZ04xt6aT1N1G5uq_7-IbA&usqp=CAY'
skateboard = 'https://cdn.shopify.com/s/files/1/0092/1085/5524/products/Loaded-Mata-Hari-complete-2048p_1024x.jpg?v=1632871185'
scooter = 'https://i.ebayimg.com/images/g/ITIAAOSwm4FikGYs/s-l500.jpg'
swiss_ball = 'https://i.ebayimg.com/images/g/d5kAAOSwz0JgRmHs/s-l500.jpg'
old_tennis_racket = 'https://i.ebayimg.com/images/g/C~MAAOSw0EJia1o8/s-l500.jpg'
chess = 'https://shop.houseofmarbles.com/wp-content/uploads/2019/05/255558-Chess-Set-Contents.jpg'
wheelbarrow = 'https://i.ebayimg.com/images/g/iyQAAOSwgGlhCkPu/s-l640.jpg'
tea_glass = 'https://cdn.shopify.com/s/files/1/0414/5804/0983/products/611159430_667x.jpg?v=1607056008'
cat_post = 'https://m.media-amazon.com/images/I/41DKciK9Y6L._AC_SY580_.jpg'
dog_bed = 'https://images.squarespace-cdn.com/content/v1/5d68769836604b0001c10b55/1596693322167-PL9YS2E5FMPJBAFIK0OS/18.jpg?format=2500w'
paris_painting = 'https://artwork.wallartprints.com/media/catalog/product/cache/97679f4195b38ac9f6ee160209a84f40/1/6/167017446_StretchedCanvas_1.jpg'
movie_poster = 'https://img.buzzfeed.com/buzzfeed-static/static/2022-03/28/2/asset/2b92f7d73e60/sub-buzz-6384-1648433205-1.jpg'
marvel_dvd_set = 'https://www.couponing101.com/wp-content/uploads/2013/11/Marvel-Blu-ray-Collection.png'
outdoor_chairs = 'https://media.nisbets.com/asset/core/prodimage/large_new/u422_primary.jpg'
outdoor_table = 'https://media.nisbets.com/asset/core/prodimage/large_new/u422_primary.jpg'
baby_walker = 'https://images.unsplash.com/photo-1599082779777-8edeb377cdef?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1740&q=80'
lego = 'https://www.bigw.com.au/medias/sys_master/images/images/h4e/h57/10668855623710.jpg'
