# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user = User.new(username:"potatoe",email:"potato@gmail.com",password:"124566")
user.save

franchise = Franchise.new(name: "potato")
franchise.save

itemtype = ItemType.new(name: "shoes")
itemtype.save

flyknit = Item.new(name: "flyknit", description: "potato")
flyknit.franchise = Franchise.first
flyknit.item_type = ItemType.first
flyknit.owner = User.last
flyknit.creator = User.last

flyknit.save!

review = Review.new(comment:"ptoato",rating:5)
review.item = Item.first
review.user = User.last
review.save
puts "review ok"

time = Time.now()
auction = Auction.new(start_time:time, end_time:time, minimum_bid:500)
auction.item = Item.first
auction.save

puts "auction ok"

bid = Bid.new(bid_time:time)
bid.buyer = User.last
bid.buyer_id = 10
bid.auction = Auction.first
bid.save

puts "bid ok!"

puts "done!"
