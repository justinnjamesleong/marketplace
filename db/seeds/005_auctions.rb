time = Time.now
items = Item.all
puts "selecting the first item created by each user to be put on auction"
items_for_auction = []
items.each do |item|
  items_for_auction << item if item.id.odd?
end

puts "generating auction for each selected item"
items_for_auction.each do |item|
  auction = Auction.new(
    start_time: time,
    end_time: time + (10_000..20_000).to_a.sample,
    minimum_bid: (100..500).to_a.sample
  )
  auction.item = item
  auction.save
  puts "auction for #{item.name} has been generated"
end

puts "puts #{Auction.all.count} auctions seeded"
puts "-------------------------------------------------------------------------"
puts "-------------------------------------------------------------------------"
