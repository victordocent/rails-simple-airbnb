puts "Destroying all flats..."
Flat.destroy_all


puts "Creating flats..."
# Seed for Flat 1
# db/seeds.rb

require 'faker'

# Seed for Flat 1
Flat.create!(
  name: 'Light & Spacious Garden Flat London',
  address: '10 Clifton Gardens London W9 1DT',
  description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
  price_per_night: 75,
  number_of_guests: 3,
  primary_image: Faker::LoremFlickr.image(search_terms: ['flat']),
  availability: true
)

# Seed for Flat 2
Flat.create!(
  name: 'Cozy Studio Apartment in the City Center',
  address: '25 Main Street, City Center',
  description: 'Charming studio apartment in the heart of the city. Perfect for a solo traveler or a couple looking for a cozy retreat.',
  price_per_night: 50,
  number_of_guests: 2,
  primary_image: Faker::LoremFlickr.image(search_terms: ['studio']),
  availability: true
)

# Seed for Flat 3
Flat.create!(
  name: 'Luxurious Penthouse with Panoramic Views',
  address: '5 High Street, Penthouse Floor',
  description: 'Experience luxury living in this stunning penthouse with breathtaking panoramic views. Three bedrooms, a spacious living area, and top-notch amenities.',
  price_per_night: 150,
  number_of_guests: 5,
  primary_image: Faker::LoremFlickr.image(search_terms: ['penthouse']),
  availability: true
)

# Seed for Flat 4
Flat.create!(
  name: 'Quaint Cottage in the Countryside',
  address: '7 Meadow Lane, Rural Village',
  description: 'Escape to the countryside in this charming cottage. Surrounded by nature, it offers a peaceful retreat with two bedrooms and a rustic ambiance.',
  price_per_night: 80,
  number_of_guests: 4,
  primary_image: Faker::LoremFlickr.image(search_terms: ['cottage']),
  availability: true
)

puts "Created #{Flat.count} flats."
puts "Done!"
