require 'faker'

puts "Cleaning database..."
Restaurant.destroy_all

puts 'Creating 100 fake restaurants...'
40.times do
  restaurant = Restaurant.new(
    name: Faker::Restaurant.name,
    address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
    category: %w[chinese italian japanese french belgian].sample,
    phone_number: Faker::PhoneNumber.cell_phone
  )
  restaurant.save!
  puts "Created #{restaurant.name}"

end
