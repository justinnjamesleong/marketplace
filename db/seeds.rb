# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

10.times do
  franchise = Franchise.new(name: Faker::Appliance.brand)
  franchise.save

  itemtype = ItemType.new(name: Faker::ElectricalComponents.active)
  itemtype.save
end

10.times do
  user = User.new(username:Faker::Name.name,email:Faker::Internet.email,password:"124566")
  user.save
end

10.times do
  flyknit = Item.new(name: Faker::Science.element, description: Faker::Space.galaxy)
  flyknit.franchise = Franchise.all.sample
  flyknit.item_type = ItemType.all.sample
  flyknit.owner = User.all.sample
  flyknit.creator = User.all.sample

  flyknit.save!

  review = Review.new(comment: Faker::Space.nasa_space_craft, rating: (1..5).to_a.sample)
  review.item = Item.all.sample
  review.user = User.all.sample
  review.save

  time = Time.now()
  auction = Auction.new(start_time:time, end_time:time+(10000..20000).to_a.sample, minimum_bid:(100..500).to_a.sample)
  auction.item = Item.all.sample
  auction.save

  bid = Bid.new(bid_time:time)
  bid.buyer = User.all.sample
  bid.bid_amount = (100..1000).to_a.sample
  bid.auction = Auction.all.sample
  bid.save

  puts "done!"
end
