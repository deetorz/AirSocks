puts "cleaning db"
Sock.destroy_all
User.destroy_all
Booking.destroy_all
puts "Populating the database..."

user = User.create!(username: "Derek", location: "Meguro", email: "derekkkkkkkkk@gmail.com", password: "123123")

Sock.create(name: "cute purple socks", description: "Really cute purple socks that will make you feel sooo kawaii 💜", color: "purple", style: "high socks", size: 24.5, price: 2000, user_id: 1, photo_url: "https://m.media-amazon.com/images/I/61Xls0GWrRL._AC_UX679_.jpg")
Sock.create(name: "Sexy thigh highs!", description: "These babies will bring all the boys to the yard", color: "magenta", style: "thigh highs", size: 20.0, price: 10000, user_id: 1, photo_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSC2IvNRSNkC7FU7WhIJgYl7HipGZT-h7KFXA&usqp=CAU")
Sock.create(name: "Pringle socks", description: "Don't eat my socks!", color: "original pringle", style: "high socks", size: 16.0, price: 8000, user_id: 1, photo_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSanzbVgqOCAIx-2Bpv8WxyAhTlHigtS8iEIg&usqp=CAU")

puts "Created 1 user and #{Sock.count} socks!"
