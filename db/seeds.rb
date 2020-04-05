# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Mechanic.destroy_all
Park.destroy_all
MechanicRide.destroy_all

mechanic_1 = Mechanic.create!(name: "Sam Mills", experience: 10)
mechanic_2 = Mechanic.create!(name: "Kara Smith", experience: 11)

park_1 = Park.create!(name: "Hershey Park", price: 50)

ride_1 = park_1.rides.create!(name: "The Frog Hopper", thrill_rating: 7)
ride_2 = park_1.rides.create!(name: "Farenheit", thrill_rating: 9)
ride_3 = park_1.rides.create!(name: "The Kiss Raise", thrill_rating: 4)
ride_4 = park_1.rides.create!(name: "Lightning Racer", thrill_rating: 8)
ride_5 = park_1.rides.create!(name: "Storm Runner", thrill_rating: 6)

MechanicRide.create!(mechanic_id: mechanic_2.id, ride_id: ride_1.id)
MechanicRide.create!(mechanic_id: mechanic_2.id, ride_id: ride_2.id)
MechanicRide.create!(mechanic_id: mechanic_2.id, ride_id: ride_3.id)
