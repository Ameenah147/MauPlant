# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require "open-uri"

puts "cleaning database"

Message.destroy_all
GardenPlant.destroy_all
Plant.destroy_all
Categorie.destroy_all
Garden.destroy_all
User.destroy_all

User.create(email: 'test@gmail.com', password: '123456')

puts "creating garden"

file = URI.open("https://res.cloudinary.com/dfz9nuknq/image/upload/v1666267669/1fb1d6e69cafebd7b6884e3b7a13838c_vl1hrz.jpg")
plant1 = Plant.new(name: "Mandarin",
 description:"Water the tree in well and then cover the soil with a 10cm layer of mulch to conserve moisture, but keep it away from the trunk. In the first year, water trees at least once or twice a week, depending on the weather conditions. Once established, water trees deeply every two to three weeks, more in hot dry weather.", category:"fruit")
plant1.photo.attach(io: file, filename: "Mandarin.jpg", content_type: "image/jpg")
plant1.save

file = URI.open("https://res.cloudinary.com/dfz9nuknq/image/upload/v1666267686/fc978a8aeab608b13a2ef8214a48daca_llzbqp.jpg")
plant2 = Plant.new(name: "Litchee", description:"Litchees should not be in standing water, as it will stunt their growth. Newly planted trees should be watered 2 to 3 times a week during the first weeks of planting", category:"fruit")
plant2.photo.attach(io: file, filename: "litchi.jpg", content_type: "image/jpg")
plant2.save

file = URI.open("https://res.cloudinary.com/dfz9nuknq/image/upload/v1666267721/75515e14b04666e60d3df1b32dfc7d31_c97fja.jpg")
plant3 = Plant.new(name: "Star fruit", description:"Plant your star fruit in full sun, away from other trees and buildings, structures, and power lines. Along with warm temperatures, this plant needs well-drained soil, improved fertilization, and protection from the wind. It may also need supplemental irrigation as carambola is not drought-tolerant, water the tree very deeply once or twice per week if it hasn't rained. Watering is most vital from flowering through fruiting.",
  category:"fruit")
plant3.photo.attach(io: file, filename: "star_fruit.jpg", content_type: "image/jpg")
plant3.save

file = URI.open("https://res.cloudinary.com/dfz9nuknq/image/upload/v1666267704/225305102_4505699912788113_1505443211150085412_n-300x300_xiqxoe.jpg")
plant4 = Plant.new(name: "Longan", description:"Irrigate a longan tree in the same manner once a week, but only if it did not rain 1 inch of water during that week. Stop watering a longan tree in late summer after harvesting the fruit. It then only needs water during long droughts.", category:"fruit")
plant4.photo.attach(io: file, filename: "longan.jpg", content_type: "image/jpg")
plant4.save

file = URI.open("https://res.cloudinary.com/dfz9nuknq/image/upload/v1666267743/f0f042cf501ccdff441cde78112466e5_ncmubt.jpg")
plant5 = Plant.new(name: "Apple", description:" water the roots, then allow that water to absorb before watering more. Give your tree a deep watering and then let those roots dry out completely before watering again later in the week or month. If your apple tree's roots never dry out, it will become vulnerable to root rot.", category:"fruit")
plant5.photo.attach(io: file, filename: "apple.jpg", content_type: "image/jpg")
plant5.save

file = URI.open("https://res.cloudinary.com/dfz9nuknq/image/upload/v1666267762/f87136c3cfbd8a763c3c94cd396883d9_zor0df.jpg")
plant6 = Plant.new(name: "Pommegrenade", description:"pomegranates require about 45 inches of water per year either from rainfall or irrigation.", category:"fruit")
plant6.photo.attach(io: file, filename: "pommegrenade.jpg", content_type: "image/jpg")
plant6.save

file = URI.open("https://res.cloudinary.com/dfz9nuknq/image/upload/v1666267776/6f5e29876c0a2b9a8b2d5dc3bbdec15f_teu0ng.jpg")
plant7 = Plant.new(name: "Strawberry", description:"The best way to water strawberries is to use drip or soaker hose placed at least two inches away from the plant. Strawberry roots are shallow, so keep the soil moist but not soggy. If soil is high in clay, be especially careful not to over-water. Use sprinkler irrigation carefully.", category:"fruit")
plant7.photo.attach(io: file, filename: "strawberry.jpg", content_type: "image/jpg")
plant7.save

file = URI.open("https://res.cloudinary.com/dfz9nuknq/image/upload/v1666267787/f51f048cc7462a6ff8b68dce01b30c66_dceb0w.jpg")
plant8 = Plant.new(name: "Water Melon", description:"Watering 1–2 times per week,try to keep the soil moist to a depth of 12 inches (30 cm) at all times.", category:"fruit")
plant8.photo.attach(io: file, filename: "water_melon.jpg", content_type: "image/jpg")
plant8.save

file = URI.open("https://res.cloudinary.com/dfz9nuknq/image/upload/v1666267802/5e32f088243fc309b10e632e5f482cd3_wbfnn7.jpg")
plant9 = Plant.new(name: "Pineapple", description:"Since tropicals can handle lots of water and moisture, remember to water this plant regularly to help its flower and fruit eventually develop. Water the soil directly and keep the soil moist but not soggy. Water once a week when the soil surface is dry.", category:"fruit")
plant9.photo.attach(io: file, filename: "Pineapple.jpg", content_type: "image/jpg")
plant9.save

file = URI.open("https://res.cloudinary.com/dfz9nuknq/image/upload/v1666267824/1000_F_91680839_JwEVYgOYVAqZTjASnkZTnsAgt3yM45ED_jdvpwu.jpg")
plant10 = Plant.new(name: "Pear", description:"Pear trees are a great addition to a yard or landscape. Pears are delicate, however, and too much or too little watering can lead to yellowing or dropped leaves and subpar fruit

Read more at Gardening Know How: Pear Tree Irrigation: Tips On Watering A Pear Tree https://www.gardeningknowhow.com/edible/fruits/pear/watering-a-pear-tree.htm", category:"fruit")
plant10.photo.attach(io: file, filename: "pear.jpg", content_type: "image/jpg")
plant10.save

file = URI.open("https://res.cloudinary.com/dfz9nuknq/image/upload/v1666267813/1e3dbd284a9eb7c3e939622bd0c4f422_obie6d.jpg")
plant11 = Plant.new(name: "Grape", description:"Young grapes require about 1/2 to 1 inch of water per week, depending on rainfall", category:"fruit")
plant11.photo.attach(io: file, filename: "grape.jpg", content_type: "image/jpg")
plant11.save

file = URI.open("https://res.cloudinary.com/dfz9nuknq/image/upload/v1666267850/b48bd1329d34f40610561657b433a65b_xtqz0y.jpg")
plant13 = Plant.new(name: "Cucumber", description:"Water slowly in the morning or early afternoon, and avoid getting the leaves wet, as that may encourage leaf diseases that can ruin the plant. If possible, water your cucumbers with a soaker hose or drip irrigation to keep the foliage dry. Mulch around plants to retain soil moisture.", category:"vegetable")
plant13.photo.attach(io: file, filename: "cocumber.jpg", content_type: "image/jpg")
plant13.save

file = URI.open("https://res.cloudinary.com/dfz9nuknq/image/upload/v1666267863/eb3b4e976d45ca902904ac28650717af_w73dsr.jpg")
plant14 = Plant.new(name: "Cabbage", description:"Let the sunshine in: Cabbages need full sun – at least six to eight hours of direct sunlight per day. Water wisely: It's best to water in the morning and at the base of the plant (soil level) keeping the foliage dry. Plants should be watered when the top 2 inches of the soil becomes dry to the touch.", category:"vegetable")
plant14.photo.attach(io: file, filename: "cabbage.jpg", content_type: "image/jpg")
plant14.save

file = URI.open("https://res.cloudinary.com/dfz9nuknq/image/upload/v1666267875/d50180be5f8b83eb52f1aa7e1719fc7b_tkei6a.jpg")
plant15 = Plant.new(name: "Lettuce", description:"Lettuce has shallow roots, so plants need consistent watering. Check at least twice a week and water if the soil is dry down to 1 inch deep. Containers of lettuce need to be watered more frequently than garden beds, especially in the summer", category:"vegetable")
plant15.photo.attach(io: file, filename: "lettuce.jpg", content_type: "image/jpg")
plant15.save

file = URI.open("https://res.cloudinary.com/dfz9nuknq/image/upload/v1666267962/240_F_169305319_ocVsDjvATOkwU1vnhXJcRGTzVehRVSr9_dq8zzw.jpg")
plant17 = Plant.new(name: "Bell Pepper", description:"Watering: Soak the soil thoroughly when watering. On average, they will need an inch of water per week, coming from rain and/or from irrigation. While peppers need a moist soil, a soggy soil can lead to root rot, so check the soil before watering", category:"vegetable")
plant17.photo.attach(io: file, filename: "BellPepper.jpg", content_type: "image/jpg")
plant17.save

file = URI.open("https://res.cloudinary.com/dfz9nuknq/image/upload/v1666267940/1000_F_240969248_tL666JKRYq8ecSiVTEehEesDW7Ss9YTt_xs4kes.jpg")
plant18 = Plant.new(name: "Eggplant", description:"Water eggplant deeply and infrequently, applying 1-2 inches per week. Use drip irrigation if possible. Mulching around the plant will conserve soil moisture and reduce weed growth. Irrigate so that moisture goes deeply into the soil.", category:"vegetable")
plant18.photo.attach(io: file, filename: "Eggplant.jpg", content_type: "image/jpg")
plant18.save

file = URI.open("https://res.cloudinary.com/dfz9nuknq/image/upload/v1666267975/240_F_65127874_BdEFCjM2tSqB1FdA8NnE5IF6ozio95VA_pldl0j.jpg")
plant19 = Plant.new(name: "Spinach", description:"To speed up the germination then soak the seeds overnight in water. Growing water spinach from cuttings is the easiest method to propagate it. Just cut several 30 to 40cm long cuttings from young growth and plant 15 cm deep in potting mix. Water spinach can be grown from seed, often soaked for 24 hours before sowing.", category:"vegetable")
plant19.photo.attach(io: file, filename: "spinach.jpg", content_type: "image/jpg")
plant19.save

file = URI.open("https://res.cloudinary.com/dfz9nuknq/image/upload/v1666267993/1000_F_277530247_iWPLqhh85Zsmfasd3w15NzmiZrX6U6W2_fvunde.jpg")
plant20 = Plant.new(name: "Mint", description:"Water the plant only when the soil feels dry to the touch and the pot is light. To water indoor mint plants, move the pot to the sink or bathtub, turn on the water, and let it flush through the soil and exit the drainage hole in the bottom of the pot.", category:"vegetable")
plant20.photo.attach(io: file, filename: "Mint.jpg", content_type: "image/jpg")

plant20.save

file = URI.open("https://res.cloudinary.com/dfz9nuknq/image/upload/v1666267890/carrots-in-soil_pylglk.jpg")
plant16 = Plant.new(name: "Carrots", description:"About an inch of water each week should be enough for your growing carrots. Keep the soil evenly moist to ensure that your plants germinate and grow together. Overwatering will promote hairy roots and forking, so to keep even moisture without overwatering try mulching around your carrots to help conserve moisture.", category:"vegetable")
plant16.photo.attach(io: file, filename: "Carrots.jpg", content_type: "image/jpg")
plant16.save

file = URI.open("https://res.cloudinary.com/dfz9nuknq/image/upload/v1666268003/fe61b5adb4f765f51ecc2fc15927d8c7_orhrnw.jpg")
plant21 = Plant.new(name: "Marigold", description:"Keep the soil moist, especially during prolonged dry periods, giving plants a thorough water once a week. Plants in containers will probably need watering every day or every other day during summer.", category:"flower")
plant21.photo.attach(io: file, filename: "Marigold.jpg", content_type: "image/jpg")
plant21.save

file = URI.open("https://res.cloudinary.com/dfz9nuknq/image/upload/v1666268035/0a16e41dc98a48c11555375fcc9a1f0f_oethwk.png")
plant22 = Plant.new(name: "Roses", description:"It is best to water as close to base of the rose as you can. If the water is starting to flow away from the base, stop for a moment to allow the water to soak in, then continue. Don't water over the flowers or foliage. Watering foliage can encourage disease problems, particularly if it remains on the leaves overnight.", category:"flower")
plant22.photo.attach(io: file, filename: "Roses.jpg", content_type: "image/jpg")
plant22.save

file = URI.open("https://res.cloudinary.com/dfz9nuknq/image/upload/v1666268050/756e3e7e27f4278fc86d4d950c8a85fd_xluj6c.png")
plant23 = Plant.new(name: "Hibiscus", description:"Keep the soil surrounding the hibiscus moist but not soggy. For the first week after planting, water daily, tapering off to once every two days in the second week, and then about twice a week thereafter, when there is no rainfall. If the weather becomes especially hot and dry, water every other day.", category:"flower")
plant23.photo.attach(io: file, filename: "Hibiscus.png", content_type: "image/jpg")
plant23.save

file = URI.open("https://res.cloudinary.com/dfz9nuknq/image/upload/v1666268080/3ce9f5af57c97bfdcd53cdb878c48ce9_nyd7u5.jpg")
plant24 = Plant.new(name: "Jasmin", description:"Jasmine flowers that are in-ground should be watered once a week. If it is unusually dry or hot, increase the frequency, but let the soil dry out in between. If your jasmine is in a container, it will likely require water multiple times each week, especially in the hotter months.", category:"flower")
plant24.photo.attach(io: file, filename: "Jasmin.jpg", content_type: "image/jpg")
plant24.save

file = URI.open("https://res.cloudinary.com/dfz9nuknq/image/upload/v1666268111/Bridal_Sunblaze_C2_AE_004_urhupx.jpg")
plant25 = Plant.new(name: "White Roses", description:"It is best to water as close to base of the rose as you can. If the water is starting to flow away from the base, stop for a moment to allow the water to soak in, then continue. Don't water over the flowers or foliage. Watering foliage can encourage disease problems, particularly if it remains on the leaves overnight", category:"flower")
plant25.photo.attach(io: file, filename: "White_Roses.jpg", content_type: "image/jpg")
plant25.save

file = URI.open("https://res.cloudinary.com/dfz9nuknq/image/upload/v1666268122/red-rose_jnq4yz.jpg")
plant26 = Plant.new(name: "Red Roses", description:"It is best to water as close to base of the rose as you can. If the water is starting to flow away from the base, stop for a moment to allow the water to soak in, then continue. Don't water over the flowers or foliage. Watering foliage can encourage disease problems, particularly if it remains on the leaves overnight", category:"flower")
plant26.photo.attach(io: file, filename: "Red_Roses.jpg", content_type: "image/jpg")
plant26.save

chatroom1 = Chatroom.new(name: "Forum")
chatroom1.save
