# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# User.destroy_all
# Toilet.destroy_all
# Booking.destroy_all

puts "Creating users"

user1 = User.new(
  email: "user1@lewagon.com",
  password: "123456"
)

user1.save!

user2 = User.new(
  email: "user2@lewagon.com",
  password: "123456"
)

user2.save!

puts "Finished creating user"

puts "Creating toilet"

url1 = "https://d3knx7v8i1y46b.cloudfront.net/2017/12/arancs-wc1.jpg"
url2 = "https://cdn.historydaily.org/content/53504/99ab436bc5d2af1be4fadbd7a69c6bfb.jpg"

toilet1 = Toilet.new(
  title: "Beautiful Toilet",
  description: "Nice view, warm seat",
  location: "CPH"
)

toilet2 = Toilet.new(
  title: "Stunning Toilet",
  description: "Fancy",
  location: "Louvre"
)

toilet1.remote_photo_url = url1
toilet2.remote_photo_url = url2

toilet1.owner = user1
toilet2.owner = user2

toilet1.save!
toilet2.save!

puts "Finished creating toilet"

puts "Creating booking"

booking1 = Booking.new(
  date: Date.today,
  time: Time.now
)
 booking1.toilet = toilet1
 booking1.renter = user2

booking1.save!
puts "Finished creating booking"

