# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10_000.times do |i|
  Patient.create(
    first_name: Faker::Name.name,
    last_name: Faker::Name.name,
    email: Faker::Internet.email,
    active: Faker::Boolean.boolean(true_ratio: 0.4),
    phone: Faker::PhoneNumber.phone_number,
    dob: Faker::Date.between(from: '1800-09-23', to: '2014-09-25')
  )
end
