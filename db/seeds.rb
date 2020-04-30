# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

specialty = Specialty.create!(name: "Medical doctor")
specialty.save
specialty = Specialty.create!(name: "Psychologist")
specialty.save

40.times do
    city = City.create!(name: Faker::Address.city)
  end

40.times do
  doctor = Doctor.create(first_name: "Didier", last_name: "Raoult", zip_code: "13000")
end

40.times do
    p1 = Patient.create(first_name: "John", last_name: "Travolta")
end