require 'cloudinary'

puts "cleaning db"
Booking.destroy_all
Sock.destroy_all
User.destroy_all
puts "Populating the database..."

User.create!(username: "Derek", location: "Meguro", email: "derek@gmail.com", password: "123123")

Sock.create(
  name: "Petty AF",
  description: "When you're feeling spicy.",
  color: "Pink",
  style: "Mid-calf",
  size: 24.5,
  price: 2_000,
  user_id: User.last.id,
  photo_url: "https://res.cloudinary.com/meru808/image/upload/v1629377200/Airsocks/erik-mclean-gEi0EgoD_Hs-unsplash_shzjlc.jpg",
  address: "1-18-8 Shintomi, Chuo City, Tokyo"
)
Sock.create(
  name: "Sexy Lipps",
  description: "These babies will bring all the boys to the yard",
  color: "Red and white",
  style: "Ankle",
  size: 20.0, price: 10_000,
  user_id: User.last.id,
  photo_url: "https://res.cloudinary.com/meru808/image/upload/v1629377200/Airsocks/hanna-balan-gBsKvlZU4uk-unsplash_eazgcb.jpg",
  address: "2-3-1 Nishishinbashi, Minato City, Tokyo"
)
Sock.create(
  name: "Left to Right",
  description: "Do the hokey pokey",
  color: "Black",
  style: "Ankle",
  size: 16.0,
  price: 8_000,
  user_id: User.last.id,
  photo_url: "https://res.cloudinary.com/meru808/image/upload/v1629377201/Airsocks/martin-may-oShhs6ufNBU-unsplash_lelehx.jpg",
  address: "2-9-1 Nihonbashi, Chuo City, Tokyo"
)

puts "Created #{User.last.username}"

User.create!(username: "Mel", location: "Meguro", email: "mel@gmail.com", password: "123123")

Sock.create(
  name: "Go bananas!",
  description: "Try not to eat them!",
  color: "Pink and yellow",
  style: "Mid-calf",
  size: 20.0, price: 10_000,
  user_id: User.last.id,
  photo_url: "https://res.cloudinary.com/meru808/image/upload/v1629377200/Airsocks/gabrielle-henderson-RKHGV6ESIlo-unsplash_qgrebp.jpg",
  address: "Starbucks, 赤坂1-8-1, Tokyo, Tokyo Prefecture 107-0052, Japan"
)
Sock.create(
  name: "Wicked",
  description: "Something wicked this way comes...",
  color: "Red and orange",
  style: "Thigh-high",
  size: 16.0,
  price: 8_000,
  user_id: User.last.id,
  photo_url: "https://res.cloudinary.com/meru808/image/upload/v1629377200/Airsocks/emanuela-picone-b2ReGjhq5FQ-unsplash_gqexy1.jpg",
  address: "Narita International Airport"
)

puts "Created #{User.last.username}"

User.create!(username: "Anthony", location: "Meguro", email: "anthony@gmail.com", password: "123123")

Sock.create(
  name: "Hand socks",
  description: "Sometimes you just need socks for your hands.",
  color: "Salmon",
  style: "Mid-calf",
  size: 20.0,
  price: 10_000,
  user_id: User.last.id,
  photo_url: "https://res.cloudinary.com/meru808/image/upload/v1629377199/Airsocks/thought-catalog-FACFpJVoMJs-unsplash_zwudav.jpg",
  address: "Lawson, 赤坂1-5-14, Tokyo, Tokyo Prefecture 107-0052, Japan"
)

puts "Created #{User.last.username} user and #{Sock.count} socks!"
