# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Mechanic.destroy_all

mechanic_1 = Mechanic.create!(name: "Sam Mills", experience: 10)
mechanic_2 = Mechanic.create!(name: "Kara Smith", experience: 11)
