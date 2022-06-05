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
item1.franchise_id = Franchise.all.last.id # james bond
item1.item_type_id = Franchise.all.first.id # painting
item1.creator_id = creators[0].id # john
item1.owner_id = creators[0].id

puts "one item created"
item1.photo.attach(io: File.open("app/assets/images/bond.jpg"), filename: "bond.jpg", content_type: "photo/jpg")
puts "attaching photo to item"
item1.save!
puts "item: #{item1.name} has been created"
