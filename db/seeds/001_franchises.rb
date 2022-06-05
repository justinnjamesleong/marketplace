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
puts "-------------------------------------------------------------------------"
puts "-------------------------------------------------------------------------"
