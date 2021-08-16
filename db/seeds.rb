Sock.destroy_all
p "Populating the database..."

user = User.create!(username: "Derek", location: "Meguro", email: "derekkkkkkkkk@gmail.com", password: "123123")

Sock.create(name: "cute purple socks", description: "Really cute purple socks that will be you feel sooo kawaii 💜", color: "purple", style: "high socks", size: 24.5, price: 2000, user_id: 1, photo_url: "https://m.media-amazon.com/images/I/61Xls0GWrRL._AC_UX679_.jpg")
Sock.create(name: "sexy(???) thigh highs!!", description: "These babies will make bring all the boys to the yard", color: "magenta", style: "thigh highs", size: 20.0, price: 10000, user_id: 1, photo_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSC2IvNRSNkC7FU7WhIJgYl7HipGZT-h7KFXA&usqp=CAU")
Sock.create(name: "cute purple socks", description: "Comfy black ankle socks, nyaaaah!", color: "black", style: "ankle socks", size: 23.5, price: 500, user_id: 1, photo_url: "https://images.smartwool.com/is/image/SmartWool/SW004039001-1-p?$WC-FULLIMAGE$")
Sock.create(name: "FOOTBALL, BEER, MY SOCKS!!", description: "REAL MEN WEAR MY SOCKS! RENT MY SOCKS!", color: "grey", style: "sport socks", size: 33.5, price: 2800, user_id: 1, photo_url: "https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/68c250f2-451a-47d4-a5be-de7cc13dd82a/everyday-cushioned-training-ankle-socks-3-pairs-nGq57w.png")
Sock.create(name: "pringle socks", description: "haha eat my socks", color: "original pringle", style: "high socks", size: 16.0, price: 8000, user_id: 1, photo_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSanzbVgqOCAIx-2Bpv8WxyAhTlHigtS8iEIg&usqp=CAU")



p "Created 1 user and #{Sock.count} socks!"
