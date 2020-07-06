# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do 
    User.create(
        name: Faker::Name.name
    )
end

onion = OnionRing.create(name: ['Purple Onion', 'Grey Batter', 'Black Crispy', 'Blue Flavor Rasberry Flavor', 'Yellow Happiness', 'Pink Veggies'].sample)

rev = Review.create(
    user_id:  User.all.sample.id,
    onion_ring_id: onion.id,
    description: "Little too oily, but good",
    rating: 4
)

5.times do 
    Restaurant.create(
        name: Faker::Company.name,
        address: Faker::Address.street_address
    )
end

oniores = OnionRestaurant.create(
    restaurant_id: Restaurant.all.sample.id,
    onion_ring_id: onion.id
)
