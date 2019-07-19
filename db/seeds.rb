require 'faker'

p "Charles the Intern is clearing the Database...."
Tent.destroy_all

p "Our God Felix is reseeding the Database"

Tent.create(
	title: "Lakeside Cabin",
	capacity: rand(1..10),
	description: "A beautiful tent located on the shore of Lake Witchta. Enjoy a delightful cmaping experience!",
	location: "Lake Witchita",
	price: rand(10..800),
	wildlife: "Fish",
	remote_photo_url: "https://www.publicdomainpictures.net/pictures/60000/velka/tent-by-the-lake.jpg",
	user_id: User.last.id
	)

Tent.create(
	title: "Beautiful Hut in the Forest",
	capacity: rand(1..10),
	description: "Like Nature? Escape for the weekend into a delightful green environment, and enjoy some of the most pristine forest you have ever experienced.",
	location: "#{Faker::Address.full_address}",
	price: rand(10..800),
	wildlife: "Turkey",
	remote_photo_url: "https://d2gg9evh47fn9z.cloudfront.net/800px_COLOURBOX2089590.jpg",
	user_id: User.last.id
	)

Tent.create(
	title: "Riverside Tent",
	capacity: rand(1..10),
	description: "Go fishing for a weekend! We rent out our wonderful, spacious tent for families looking to catch some trout!",
	location: "#{Faker::Address.full_address}",
	price: rand(10..800),
	wildlife: "Fish",
	remote_photo_url: "http://www.johnharveyphoto.com/TwoHotSprings/RiverSideCampSiteHg.jpg",
	user_id: User.last.id
	)

Tent.create(
	title: "Survival Experience!",
	capacity: rand(1..10),
	description: "Our tent is very unique. We will challenge you with a realistic survival experience, as we hunt you with primitve weapons. Truly an experience you shall never forget.",
	location: "#{Faker::Address.full_address}",
	price: rand(10..800),
	wildlife: "Bear",
	remote_photo_url: "https://www.himalayan-experience.com/wp-content/uploads/2017/03/Survival-Tent.jpg",
	user_id: User.last.id
	)

Tent.create(
	title: "Visit Peru in a Tent",
	capacity: rand(1..10),
	description: "South America is a country of magic! Witness small Peruvian people and the wonders of Machu Pichu as you trek along the Inka Trail, taking stupid pictures to flex on Instagram.",
	location: "Peru",
	price: rand(10..800),
	wildlife: "Spider",
	remote_photo_url: "http://fromheretonowhere.com/wp-content/uploads/pisco-base-camp-777x437.jpg",
	user_id: User.last.id
	)

Tent.create(
	title: "Alps Hut",
	capacity: rand(1..10),
	description: "The German Alps are the best Alps jaaaa. Don't waste your time in Austria or Switzerland, but enjoy the true Alps in Germany. Great mountains, food, and beer await you if you book this travel!",
	location: "#{Faker::Address.full_address}",
	price: rand(10..800),
	wildlife: "Deer",
	remote_photo_url: "https://mountainwalkingholidays.co.uk/wp-content/uploads/2013/11/P1000415.jpg",
	user_id: User.last.id
	)

Tent.create(
	title: "Traditional Mongolian Yurt",
	capacity: rand(1..10),
	description: "Although Mongolia's Capital city is a true shithole, the countryside is awesome. Ride horses and maybe even kill a goat in the Gobi desert.",
	location: "#{Faker::Address.full_address}",
	price: rand(10..800),
	wildlife: "Horse",
	remote_photo_url: "https://4.bp.blogspot.com/-yxqS4sGZmQQ/TmiCzOFqZZI/AAAAAAAAADQ/QTe4QiVqtPs/s1600/mongol+ger.jpg",
	user_id: User.last.id
	)

Tent.create(
	title: "Teepee stolen from Native Americans",
	capacity: rand(1..10),
	description: "Live action reenactment of the Slaughter at Ox Lake. Play a Native American or a Pilgrim as these opposing sides murder one another. The countryside is wonderful.",
	location: "#{Faker::Address.full_address}",
	price: rand(10..800),
	wildlife: "Turkey",
	remote_photo_url: "https://images7.alphacoders.com/793/thumb-1920-793114.jpg",
	user_id: User.last.id
	)

Tent.create(
	title: "Homeless Mans Trashcan",
	capacity: rand(1..10),
	description: "Experience urban dwelling as never before! Camp the concrete jungle as you fight for scraps of crack with your hobo pals.",
	location: "#{Faker::Address.full_address}",
	price: rand(10..800),
	wildlife: "Spider",
	remote_photo_url: "https://thenewyorkcitypopper.files.wordpress.com/2011/10/trash-can1.jpg",
	user_id: User.last.id
	)

Tent.create(
	title: "Hillside Park",
	capacity: rand(1..10),
	description: "Pleasant hills and lucious nature can be found at this location! We offer our visitors a chance to relax and enjoy our beautiful planet!",
	location: "#{Faker::Address.full_address}",
	price: rand(10..800),
	wildlife: "Squirrel",
	remote_photo_url: "https://campingmastery.com/wp-content/uploads/2016/10/tent-pitched-on-hill.jpg",
	user_id: User.last.id
	)

Tent.create(
	title: "Desert Dwelling",
	capacity: rand(1..10),
	description: "Most people always think of the green forest when they go hiking. However, we like to change their mind. The desert holds many stunning aspects, and is a definite change of pace to traditional camping!",
	location: "#{Faker::Address.full_address}",
	price: rand(10..800),
	wildlife: "Cactus",
	remote_photo_url: "https://img.hipcamp.com/image/upload/c_limit,f_auto,h_1200,q_60,w_1920/v1495842079/campground-photos/sprv5fhgn3b37odksvja.jpg",
	user_id: User.last.id
	)

Tent.create(
	title: "The Original Nut Hut, Extra Nut",
	capacity: rand(1..10),
	description:"You know what you want when you ask for the extra nut you dirty dirty thang....",
	location: "#{Faker::Address.full_address}",
	price: rand(10..800),
	wildlife: "Cactus",
	remote_photo_url: "https://upload.wikimedia.org/wikipedia/commons/5/5e/The_Nut_Hut,_Hersheypark,_2013-08-10.jpg",
	user_id: User.last.id
	)

Tent.create(
	title: "Mountaintop Cave",
	capacity: rand(1..10),
	description: "Live like our ancestors! Wipe your ass with a leaf and enjoy life to the max!",
	location: "#{Faker::Address.full_address}",
	price: rand(10..800),
	wildlife: "Deer",
	remote_photo_url: "https://i.pinimg.com/originals/69/bd/b0/69bdb025def5809ea6aeb7a8ae521b78.jpg",
	user_id: User.last.id
	)

Tent.create(
	title: "Underwater Cavern",
	capacity: rand(1..10),
	description: "The fish know whats up, you should find out too! The underwater world is great, as you swim with the fish and explore the coral depths.",
	location: "#{Faker::Address.full_address}",
	price: rand(10..800),
	wildlife: "Fish",
	remote_photo_url: "https://cdn.hiconsumption.com/wp-content/uploads/2019/01/Ocean-Space-Habitat-Underwater-Tent-0-Hero.jpg",
	user_id: User.last.id
	)

Tent.create(
	title: "Lucious Treehouse",
	capacity: rand(1..10),
	description: "The bourgeoisie has torn away from the family its sentimental veil, and has reduced the family relation to a mere money relation.",
	location: "#{Faker::Address.full_address}",
	price: rand(10..800),
	wildlife: "Moose",
	remote_photo_url: "https://www.canopyandstars.co.uk/var/self_catering_site/storage/images/canopy-and-stars/britain/england/bath-n.e.-somerset/the-old-mill/old-mill-treehouse/old-mill-treehouse-gallery/old-mill-treehouse_exterior-at-night/2454701-4-eng-GB/old-mill-treehouse_exterior-at-night.jpg",
	user_id: User.last.id
	)

p "Seeding has been completed."