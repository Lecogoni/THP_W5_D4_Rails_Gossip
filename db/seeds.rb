# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'


Com.destroy_all
Pmrecipient.destroy_all
Privatemessage.destroy_all
Taggossip.destroy_all
Tag.destroy_all
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

10.times do
  Tag.create(
    title: ["#covid", "#ClaBringue", "#Rails", "#THP", "#Monkey", "#Picsou", "#AppleForever", "#TotoEnBalade", "#Prout", "#BriceDeNice"].sample
  )
end
puts "1O Tag"

# create 20 taggossips - 1 par gossip

gossip_all = Gossip.all
20.times do |idx|
  Taggossip.create(
    gossip_id: gossip_all[idx].id,
    tag_id: Tag.all.sample.id
  )
end
puts "20 taggossip - 1 par gossip"

# create 10 random taggossips
10.times do
  Taggossip.create(
    gossip_id: Gossip.all.sample.id,
    tag_id: Tag.all.sample.id
  )
end
puts "10 random taggossip"

5.times do
  Privatemessage.create(
    sender_id: User.all.sample.id,
    content: Faker::Quote.robin
  )
end
puts "5 private message"

# c = Privatemessage.first
# c.sender => donne l'expéditeur
# c.commentrecipients

5.times do
  Pmrecipient.create(
    privatemessage_id: Privatemessage.all.sample.id,
    recipient_id: User.all.sample.id,
  )
end
puts "5 Pmrecipient"

# cr = Pmrecipient.first
# cr.recipient.first_name

# com = Privatemessage.find_by(id: ???)
# list = com.commentrecipients
# list[0].recipient.first_name

20.times do
  Com.create(
    content: Faker::Quote.yoda,
    user_id: User.all.sample.id,
    gossip_id: Gossip.all.sample.id
  )
end
puts "20 Com"

# co = Com.first
# co.user.first_name
# co.gossip.title

# go = Gossip.find_by(id: ???)
# go.coms[1].user.first_name