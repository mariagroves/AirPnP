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

puts "Creating users"

user1 = User.new(
  email: "user1@lewagon.com",
  password: "123456",
  first_name: "Hugh",
  last_name: "Jackman"
)

user1.save!

user2 = User.new(
  email: "user2@lewagon.com",
  password: "123456",
  first_name: "Leo",
  last_name: "DiCaprio"
)

user2.save!

user3 = User.new(
  email: "user3@lewagon.com",
  password: "123456",
  first_name: "Queen",
  last_name: "Margrethe"
)

user3.save!

user4 = User.new(
  email: "user4@lewagon.com",
  password: "123456",
  first_name: "James",
  last_name: "Bond"
)

user4.save!

puts "Finished creating user"

puts "Creating toilet"


toilet1 = Toilet.new(
  title: "Wonderful Toilet with view on Nyhavn",
  description: "Nice view, warm seat, strong flush, complimentary soap",
  location: "Copenhagen",
  price: 29,
  address: "Ahornsgade 15, 2200 København"
)

toilet2 = Toilet.new(
  title: "Stunning Toilet with a perfect lion shaped statue grip",
  description: "For people who appreciate art, special experience, centrally located, comes with a butler",
  location: "Louvre",
  price: 50,
  address: "Rue de Rivoli, 75001 Paris, France"
)

toilet3 = Toilet.new(
  title: "Fun loo for people with a sense of humour",
  description: "no frills, making your toilet experience fun again, lots of reading material",
  location: "London",
  price: 30,
  address: "Silk St, Barbican, London EC2Y 8DS, United Kingdom"
)

toilet4 = Toilet.new(
  title: "Cosy toilet",
  description: "small space but cosy, cat sometimes wonders in and watches you pee",
  location: "Odense",
  price: 20,
  address: "Hans Jensens Stræde 45, 5000 Odense"
)

toilet5 = Toilet.new(
  title: "Luxurious pooping spot",
  description: "Super comfy seat, light airy room, good view",
  location: "Barcelona",
  price: 15,
  address: "Carrer de la Reina Cristina, 7, 08003 Barcelona, Spain"
)

toilet6 = Toilet.new(
  title: "No frills toilet",
  description: "gets the job done, centrally located, near the metro",
  location: "Moscow",
  price: 10,
  address: "Theatre Square, 1, Moscow, Russia, 125009"
)

toilet7 = Toilet.new(
  title: "Scandi minimalist toilet",
  description: "on trend, see cool Scandi design as you do your business, well-located, plenty of toilet paper",
  location: "Copenhagen",
  price: 50,
  address: "Tranegardsvej 64, Hellerup 2900"
)

toilet8 = Toilet.new(
  title: "Super cool toilet!! Glows in the dark!",
  description: "amazing space, so comfy, lots of room, option to take a shower",
  location: "Oslo",
  price: 70,
  address: "Johanne Dybwads plass 1, 0161 Oslo, Norway"
)

toilet9 = Toilet.new(
  title: "Good toilet for anyone in need..",
  description: "very close to metro stops, available most of the time, lots of privacy, soundproof",
  location: "Paris",
  price: 33,
  address: "Champ de Mars, 5 Avenue Anatole France, 75007 Paris, France"
)

toilet10 = Toilet.new(
  title: "Treetop cabin toilet with view on the Amazon jungle",
  description: "connect yourself with nature, bring your animal instincs back to life with our eco friendly relief station, feel like a monkey, shit on the tourists",
  location: "Manaus",
  price: 10,
  address: "Largo de São Sebastião - Centro, Manaus - AM, 69067-080, Brazil"
)

toilet1.owner = user1
toilet2.owner = user1
toilet3.owner = user1
toilet4.owner = user1
toilet5.owner = user2
toilet6.owner = user2
toilet7.owner = user2
toilet8.owner = user3
toilet9.owner = user3
toilet10.owner = user3

toilet1.save!
toilet2.save!
toilet3.save!
toilet4.save!
toilet5.save!
toilet6.save!
toilet7.save!
toilet8.save!
toilet9.save!
toilet10.save!

puts "Finished creating toilet"

puts "Creating booking"

booking1 = Booking.new(
  date: Date.today,
  time: Time.now
)

booking2 = Booking.new(
  date: Date.today,
  time: Time.now
)

booking3 = Booking.new(
  date: Date.today,
  time: Time.now
)

booking4 = Booking.new(
  date: Date.today,
  time: Time.now
)

booking5 = Booking.new(
  date: Date.today,
  time: Time.now
)

booking1.toilet = toilet1
booking2.toilet = toilet2
booking3.toilet = toilet4
booking4.toilet = toilet7
booking5.toilet = toilet10

booking1.renter = user2
booking2.renter = user1
booking3.renter = user3
booking4.renter = user1
booking5.renter = user2

booking1.save!
booking2.save!
booking3.save!
booking4.save!
booking5.save!

puts "Finished creating booking"

puts "Creating images"

url1 = "https://www.cuded.com/wp-content/uploads/2013/12/27-small-bathroom.jpg"
url2 = "https://disenodebanos-11456.kxcdn.com/wp-content/uploads/2014/07/decoracion-de-ba%C3%B1os-en-morado.jpg"
image1 = Image.new
image2 = Image.new
image1.remote_url_url = url1
image2.remote_url_url = url2
image1.toilet = toilet1
image2.toilet = toilet1
image1.save!
image2.save!

url3 = "https://i.pinimg.com/originals/8f/f6/7f/8ff67f0322f15ca56103e558d64ac69e.jpg"
url4 = "https://i.ebayimg.com/images/g/MDMAAOSw02FcXehl/s-l640.jpg"
image3 = Image.new
image4 = Image.new
image3.remote_url_url = url3
image4.remote_url_url = url4
image3.toilet = toilet2
image4.toilet = toilet2
image3.save!
image4.save!

url5 = "https://i.pinimg.com/originals/ca/85/1f/ca851f9a7e1f9efd921dd419bbd76812.jpg"
url6 = "https://media-cdn.tripadvisor.com/media/photo-s/07/ae/f3/ce/toilet-dengan-wall-paper.jpg"
image5 = Image.new
image6 = Image.new
image5.remote_url_url = url5
image6.remote_url_url = url6
image5.toilet = toilet3
image6.toilet = toilet3
image5.save!
image6.save!

url7 = "https://aspiremetro.com//wp-content/uploads/2015/05/3.jpg"
url8 = "http://www.jollycluj.ro/photos/produse/80/patrate/7955.jpg"
image7 = Image.new
image8 = Image.new
image7.remote_url_url = url7
image8.remote_url_url = url8
image7.toilet = toilet4
image8.toilet = toilet4
image7.save!
image8.save!

url9 = "https://www.cassbrothers.com.au/media/catalog/product/cache/image/640x640/aa2ed4d28fb66b42c2a2fa26a08e4a64/c/s/cs985vc-tcf9786wat-ls_1.png"
url10 = "https://www.squarefoot.com.hk/images/propertyblog/uploads/2652/TOTO%20Neorest%20AH%20Intelligent%20Toilet%20resized.jpg"
image9 = Image.new
image10 = Image.new
image9.remote_url_url = url9
image10.remote_url_url = url10
image9.toilet = toilet5
image10.toilet = toilet5
image9.save!
image10.save!

url11 = "https://media-cdn.tripadvisor.com/media/photo-s/0f/eb/e0/45/old-simple-toilet.jpg"
url12 = "https://media-cdn.tripadvisor.com/media/photo-s/07/8a/a7/90/novotel-bangkok-platinum.jpg"
image11 = Image.new
image12 = Image.new
image11.remote_url_url = url11
image12.remote_url_url = url12
image11.toilet = toilet6
image12.toilet = toilet6
image11.save!
image12.save!

url13 = "https://i.pinimg.com/originals/18/32/bd/1832bdb74ad411a425a5b7370539975b.jpg"
url14 = "https://www.thespruce.com/thmb/j_S2mBLEExiCV4aHHVgGhd8P94E=/640x865/filters:no_upscale()/14-stunning-bathrooms-to-inspire-your-next-renovation-1691243-1457577454.640x0c-59a47479d088c000113a8c25.jpg"
image13 = Image.new
image14 = Image.new
image13.remote_url_url = url13
image14.remote_url_url = url14
image13.toilet = toilet7
image14.toilet = toilet7
image13.save!
image14.save!

url15 = "http://www.realcoolgadgets.com/wp-content/uploads/2014/05/cool-toilet-seats.jpg"
url16 = "https://www.geekygiftideas.com/wp-content/uploads/thumbs_dir/Glow-Dark-Toilet-Paper-nvxbdm90uzagrof81vdsf13tescynmm64pmirvyrw6.jpg"
image15 = Image.new
image16 = Image.new
image15.remote_url_url = url15
image16.remote_url_url = url16
image15.toilet = toilet8
image16.toilet = toilet8
image15.save!
image16.save!

url17 = "http://www.suburble.com/wp-content/uploads/2014/09/Delta-Toilet-Suburble.com-1.jpg"
url18 = "http://www.gestablishment.com/wp-content/uploads/2017/07/simple-affordable-bathroom-designs.jpg"
image17 = Image.new
image18 = Image.new
image17.remote_url_url = url17
image18.remote_url_url = url18
image17.toilet = toilet9
image18.toilet = toilet9
image17.save!
image18.save!

url19 = "https://images.squarespace-cdn.com/content/v1/5a6724d3a9db09f49dbd9cd0/1561986610494-CRBXCOON14GPPMNMSASL/ke17ZwdGBToddI8pDm48kPKxT3JNTssps_kKLRWmUx57gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z5QPOohDIaIeljMHgDF5CVlOqpeNLcJ80NK65_fV7S1UcDMFpyqqj6sNt33cD9TGLF4RTU2WxRGrYx7H6zPU2cG27LUvk4dcjbtj9LjMW0Ujg/image-asset.jpeg?format=750w"
url20 = "https://www.fodors.com/wp-content/uploads/2018/11/HERO_TreehouseHotels_shutterstock_1146867095.jpg"
image19 = Image.new
image20 = Image.new
image19.remote_url_url = url19
image20.remote_url_url = url20
image19.toilet = toilet10
image20.toilet = toilet10
image19.save!
image20.save!

puts "Finished creating images"

