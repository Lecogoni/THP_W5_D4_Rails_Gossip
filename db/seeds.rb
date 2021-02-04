# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

Gossip.destroy_all
User.destroy_all
City.destroy_all


10.times do
  City.create(
    name: Faker::Address.city,
    zip_code: Faker::Address.zip_code,
  )
end
puts "10 City"

10.times do
  User.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    description: Faker::Lorem.words(number: 5),
    email: Faker::Internet.email,
    age: Faker::Number.between(from: 10, to: 50),
    city_id: City.all.sample.id
  )
end
puts "10 User"

20.times do
  Gossip.create(
    title: Faker::Movie.title,
    content: Faker::Movie.quote,
    user_id: User.all.sample.id
  )
end
puts "10 Gossip"