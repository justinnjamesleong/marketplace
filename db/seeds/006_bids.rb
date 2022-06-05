puts "final seeds to be created are bids"
puts "6 users will place bids -> one of the creators + the 5 users without creations"
puts "each bidder will place 2 bids"
puts "-------------------------------------------------------------------------"
puts "begining sequence to seed bids"
bidders = User.all.last(6)
bidders.each do |bidder|
  2.times do
    bid = Bid.new(bid_time: Time.now())
    bid.buyer = bidder
    bid.bid_amount = (100..1000).to_a.sample
    bid.auction = Auction.all.sample
    bid.save!
  end
  puts "2 bids have been made by #{bidder.username}"
end

puts "puts #{Bid.all.count} bids seeded"
puts "seeding completed"
puts "powering off seed generator"
puts "goodbye slave driver"
puts "-------------------------------------------------------------------------"
puts "-------------------------------------------------------------------------"
