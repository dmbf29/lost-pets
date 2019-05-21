require 'faker'

Pet.destroy_all
puts "creating pets..."
50.times do
  Pet.create!(
    name: Faker::Games::Pokemon.name,
    address: Faker::Games::Pokemon.location,
    species: Pet::SPECIES.sample,
    dead: Faker::Boolean.boolean,
    date: Date.today - rand(1..10)
  )
end
