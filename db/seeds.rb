# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Booking.destroy_all
Image.destroy_all
Toilet.destroy_all
User.destroy_all
# User.destroy_all
# Toilet.destroy_all
# Booking.destroy_all
# Image.destroy_all

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


toilet1 = Toilet.new(
  title: "Wonderful Toilet with view on Nyhavn",
  description: "Nice view, warm seat",
  location: "CPH",
  price: 29
)

toilet2 = Toilet.new(
  title: "Stunning Toilet with a perfect lion shaped statue grip",
  description: "Fancy",
  location: "Louvre",
  price: 10
)


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

puts "Creating images"

url1 = "https://i.pinimg.com/originals/72/a9/3f/72a93f8f5eb98d80df21d63924771142.jpg"
url2 = "http://www.vyperlook.com/wp-content/uploads/massupload/930439Cool-Toilets-11.jpg"
image1 = Image.new
image2 = Image.new
image1.remote_url_url = url1
image2.remote_url_url = url2
image1.toilet = toilet1
image2.toilet = toilet1
image1.save!
image2.save!

url4 = "https://i.pinimg.com/originals/72/a9/3f/72a93f8f5eb98d80df21d63924771142.jpg"
url3 = "http://www.vyperlook.com/wp-content/uploads/massupload/930439Cool-Toilets-11.jpg"
image3 = Image.new
image4 = Image.new
image3.remote_url_url = url3
image4.remote_url_url = url4
image3.toilet = toilet2
image4.toilet = toilet2
image3.save!
image4.save!

puts "Finished creating images"

