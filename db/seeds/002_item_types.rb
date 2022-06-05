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
puts "-------------------------------------------------------------------------"
puts "-------------------------------------------------------------------------"
