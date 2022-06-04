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
