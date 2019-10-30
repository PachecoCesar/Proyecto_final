# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#

User.destroy_all
Rent.destroy_all

30.times do |i|
   User.create(
   email: Faker::Internet.email,
   password: '123456',
   first_name: Faker::Name.first_name,
   last_name: Faker::Name.last_name,
   age: Faker::Number.between(from: 18, to: 80),
   about_me: Faker::ChuckNorris.fact,
   phone: Faker::PhoneNumber.phone_number_with_country_code,
   rut: Faker::ChileRut.full_rut
   )
end

40.times do |j|
   Rent.create(
   address: Faker::Address.street_address,
   town: Faker::Address.city,
   city: Faker::Nation.capital_city,
   title: Faker::House.room,
   price: Faker::Number.between(from: 100000, to: 500000),
   description: Faker::ChuckNorris.fact,
   rooms: Faker::Number.between(from: 1, to: 4),
   gender: Faker::Gender.binary_type
   )
end

#AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?
