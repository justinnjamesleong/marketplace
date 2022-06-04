# seeding franchises
puts "seeding franchises now"
franchises = %w[superman batman spiderman gundam pokemon disney harry\ potter star\ wars middle\ earth james\ bond]
franchises.each do |franchise|
  puts "creating franchise instance for #{franchise}"
  capitalized_franchise = franchise.capitalize
  new_franchise = Franchise.new(name: capitalized_franchise)
  new_franchise.save!
end
puts "finished franchise seeding"
puts "#{Franchise.all.count} franchises seeded"

# seeding itemtypes
puts "seeding itemtypes now"
itemtypes = %w[painting drawing accessory sculpture figure prop constume clothing houseware other]
itemtypes.each do |itemtype|
  puts "creating franchise instance for #{itemtype}"
  capitalized_itemtype = itemtype.capitalize
  new_itemtype = ItemType.new(name: capitalized_itemtype)
  new_itemtype.save!
end
puts "finished itemtype seeding"
puts "#{ItemType.all.count} itemtypes seeded"

# seeding users
puts "seeding users now"
usernames = %w[john mary sue anish luqman xiaoming takada jean anand karpov]
default_password = "password"
usernames.each do |username|
  puts "creating franchise instance for #{username}"
  email = "#{username}@gmail.com"
  new_user = User.new
  new_user.username = username
  new_user.password = default_password
  new_user.email = email
  new_user.save!
end
puts "finished itemtype seeding"
puts "#{ItemType.all.count} itemtypes seeded"

puts "-------------------------------------------------------------------------"
puts "phew! getting a little tired"
puts "-------------------------------------------------------------------------"
puts "but i'll keep going you lucky dog!"
puts "-------------------------------------------------------------------------"

puts "seeding items now"
# name, description, franchise, itemtype, user->owner, user->creator
creators = User.all.first(5)
puts "only 5 users will have items. Each of those 5 users will have 2 items"
puts "those users are:"
creators.each do |creator|
  p creator.username
end
# %w[superman batman spiderman gundam pokemon disney harry\ potter star\ wars middle\ earth james\ bond]
item1 = Item.new
item1.name = "A man & his car"
item1.description = "25th anniversary celebration"
item1.franchise = Franchise.all.last # james bond
item1.item_type = Franchise.all.first # painting
item1.creator = creators[0] # john
item1.owner = creators[0]

puts "item 1 created"
item1.photo = img("bond")
item1.photo.attach(io: File.open("bond.jpg"))
puts "image attached to item 1"

#   flyknit.franchise = Franchise.all.sample
#   flyknit.item_type = ItemType.all.sample
#   flyknit.owner = User.all.sample
#   flyknit.creator = User.all.sample

#   flyknit.save!

#   review = Review.new(comment: Faker::Space.nasa_space_craft, rating: (1..5).to_a.sample)
#   review.item = Item.all.sample
#   review.user = User.all.sample
#   review.save

#   time = Time.now()
#   auction = Auction.new(start_time:time, end_time:time+(10000..20000).to_a.sample, minimum_bid:(100..500).to_a.sample)
#   auction.item = Item.all.sample
#   auction.save

#   bid = Bid.new(bid_time:time)
#   bid.buyer = User.all.sample
#   bid.bid_amount = (100..1000).to_a.sample
#   bid.auction = Auction.all.sample
#   bid.save

#   puts "done!"
# end
