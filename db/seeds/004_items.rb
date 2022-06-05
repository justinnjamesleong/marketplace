puts "seeding items now"
creators = User.all.first(5)
puts "only 5 users will have items. Each of those 5 users will have 2 items"
puts "those users are:"
creators.each do |creator|
  p creator.username
end

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
puts "So far #{Item.all.count} item(s) have been created"

item2 = Item.new
item2.name = "A man & his riches"
item2.description = "Diamonds > Babes - Bond grindset"
item2.franchise_id = Franchise.all.last.id # james bond
item2.item_type_id = Franchise.all.first.id # painting
item2.creator_id = creators[0].id # john
item2.owner_id = creators[0].id

puts "one item created"
item2.photo.attach(io: File.open("app/assets/images/bond2.jpg"), filename: "bond2.jpg", content_type: "photo/jpg")
puts "attaching photo to item"
item2.save!
puts "So far #{Item.all.count} item(s) have been created"

# %w[superman batman spiderman gundam pokemon disney harry\ potter star\ wars middle\ earth james\ bond]

item3 = Item.new
item3.name = "Helm of Elendil"
item3.description = "My life's work...stainless steel, silver, gold"
item3.franchise_id = Franchise.all[8].id # middle earth
item3.item_type_id = Franchise.all[5].id # prop
item3.creator_id = creators[3].id # anish
item3.owner_id = creators[3].id

puts "one item created"
item3.photo.attach(
  io: File.open("app/assets/images/helm_of_elendil.jpg"),
  filename: "helm_of_elendil.jpg",
  content_type: "photo/jpg"
)
puts "attaching photo to item"
item3.save!
puts "So far #{Item.all.count} item(s) have been created"

item4 = Item.new
item4.name = "UWU UWU"
item4.description = "Faber Castell on card paper"
item4.franchise_id = Franchise.all[4].id # pokemon
item4.item_type_id = Franchise.all[1].id # drawing
item4.creator_id = creators[3].id # anish
item4.owner_id = creators[3].id

puts "one item created"
item4.photo.attach(
  io: File.open("app/assets/images/uber_cute.jpg"),
  filename: "uber_cute.jpg",
  content_type: "photo/jpg"
)
puts "attaching photo to item"
item4.save!
puts "So far #{Item.all.count} item(s) have been created"

item5 = Item.new
item5.name = "Stylish Wizard Robes"
item5.description = "Wearers are definitely boyfriend material."
item5.franchise_id = Franchise.all[6].id # harry potter
item5.item_type_id = Franchise.all[6].id # costume
item5.creator_id = creators[1].id # mary
item5.owner_id = creators[1].id

puts "one item created"
item5.photo.attach(
  io: File.open("app/assets/images/harry_potter_costume.jpg"),
  filename: "harry_potter_costume.jpg",
  content_type: "photo/jpg"
)
puts "attaching photo to item"
item5.save!
puts "So far #{Item.all.count} item(s) have been created"

item6 = Item.new
item6.name = "Spiderman cufflinks"
item6.description = "Perfect for formal and casual wear!"
item6.franchise_id = Franchise.all[2].id # spiderman
item6.item_type_id = Franchise.all[2].id # accessories
item6.creator_id = creators[1].id # mary
item6.owner_id = creators[1].id

puts "one item created"
item6.photo.attach(
  io: File.open("app/assets/images/spidey_cufflinks.jpg"),
  filename: "spidey_cufflinks.jpg",
  content_type: "photo/jpg"
)
puts "attaching photo to item"
item6.save!
puts "So far #{Item.all.count} item(s) have been created"

item7 = Item.new
item7.name = "Batman Car Sticker"
item7.description = "Spruce up your boring Toyota with this bad boy"
item7.franchise_id = Franchise.all[1].id # spiderman
item7.item_type_id = Franchise.all.last.id # others
item7.creator_id = creators[2].id # sue
item7.owner_id = creators[2].id

puts "one item created"
item7.photo.attach(
  io: File.open("app/assets/images/batman_carsticker.png"),
  filename: "batman_carsticker.png",
  content_type: "photo/png"
)
puts "attaching photo to item"
item7.save!
puts "So far #{Item.all.count} item(s) have been created"

item8 = Item.new
item8.name = "Superman shirt"
item8.description = "You can laze around feeling like steel"
item8.franchise_id = Franchise.all[0].id # superman
item8.item_type_id = Franchise.all[7].id # clothing
item8.creator_id = creators[2].id # sue
item8.owner_id = creators[2].id

puts "one item created"
item6.photo.attach(
  io: File.open("app/assets/images/superman_shirt.jpg"),
  filename: "superman_shirt.jpg",
  content_type: "photo/jpg"
)
puts "attaching photo to item"
item8.save!
puts "So far #{Item.all.count} item(s) have been created"

item9 = Item.new
item9.name = "Gundam mug"
item9.description = "homemade pottery with gundam head design"
item9.franchise_id = Franchise.all[3].id # gundam
item9.item_type_id = Franchise.all[8].id # houseware
item9.creator_id = creators[4].id # luqman
item9.owner_id = creators[4].id

puts "one item created"
item9.photo.attach(
  io: File.open("app/assets/images/gundam_cup.jpg"),
  filename: "gundam_cup.jpg",
  content_type: "photo/jpg"
)
puts "attaching photo to item"
item9.save!
puts "So far #{Item.all.count} item(s) have been created"

item10 = Item.new
item10.name = "Jasmine classic bust"
item10.description = "clay bust sculpted at art class :)"
item10.franchise_id = Franchise.all[5].id # disney
item10.item_type_id = Franchise.all[3].id # sculpture
item10.creator_id = creators[4].id # luqman
item10.owner_id = creators[4].id

puts "one item created"
item10.photo.attach(
  io: File.open("app/assets/images/jasmine_bust.jpg"),
  filename: "jasmine_bust.jpg",
  content_type: "photo/jpg"
)
puts "attaching photo to item"
item10.save!
puts "So far #{Item.all.count} item(s) have been created"
puts "-------------------------------------------------------------------------"
puts "-------------------------------------------------------------------------"
