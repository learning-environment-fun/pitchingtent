require 'faker'

p "Charles the Intern is clearing the Database...."
Tent.destroy_all

p "Our God Felix is reseeding the Database"

Tent.create(
	title: "Lakeside Cabin",
	capacity: rand(1..10),
	description: "The fundamental proposition is: that in every historical epoch, the prevailing mode of economic production and exchange, and the social organization necessarily following from it, form the basis upon which it is built up, and from which alone can be explained, the political and intellectual history of that epoch; that consequently the whole history of mankind (since the dissolution of primitive tribal society, holding land in common ownership) has been a history of class struggles",
	location: "#{Faker::Address.full_address}",
	price: rand(10..800),
	wildlife: "Freddy",
	remote_photo_url: "http://66.media.tumblr.com/tumblr_mejsa0wMBH1qz7mf5o1_1280.png",
	user_id: User.last.id
	)

Tent.create(
	title: "Beautiful Hut in the Forest",
	capacity: rand(1..10),
	description: "The proletariat is a class of labourers, who live only so long as they find work, and who find work only so long as their labour increases capital.",
	location: "#{Faker::Address.full_address}",
	price: rand(10..800),
	wildlife: "Freddy",
	remote_photo_url: "https://gdb.rferl.org/B75F418A-99EB-484B-B73C-C18AB08971E1_w1200_r1_s.jpg",
	user_id: User.last.id
	)

Tent.create(
	title: "Riverside Tent",
	capacity: rand(1..10),
	description: "The history of all hitherto existing society is the history of class struggles. ",
	location: "#{Faker::Address.full_address}",
	price: rand(10..800),
	wildlife: "Freddy",
	remote_photo_url: "https://bespoketravelcompany.com/wp-content/uploads/2015/02/Chairman-Mao-Inspects-the-Gaungdong-Countryside.jpg",
	user_id: User.last.id
	)

Tent.create(
	title: "Enjoy Wakanda",
	capacity: rand(1..10),
	description: "Freeman, patrician and plebian, lord and serf, guildmaster and journeyman, in a word, oppressor and oppressed, stood in constant opposition to one another, carried on an uninterrupted, now hidden, now open fight, a fight that each time ended, either in a revolutionary re-constitution of society at large, or in the common ruin of the contending classes.",
	location: "#{Faker::Address.full_address}",
	price: rand(10..800),
	wildlife: "Freddy",
	remote_photo_url: "https://gdb.rferl.org/B75F418A-99EB-484B-B73C-C18AB08971E1_w1200_r1_s.jpg",
	user_id: User.last.id
	)

Tent.create(
	title: "Visit Peru in a Tent",
	capacity: rand(1..10),
	description: "Our epoch, the epoch of the bourgeoisie, possesses, however, this distinctive feature: it has simplified the class antagonisms.",
	location: "#{Faker::Address.full_address}",
	price: rand(10..800),
	wildlife: "Freddy",
	remote_photo_url: "https://bespoketravelcompany.com/wp-content/uploads/2015/02/Chairman-Mao-Inspects-the-Gaungdong-Countryside.jpg",
	user_id: User.last.id
	)

Tent.create(
	title: "Alps Tent",
	capacity: rand(1..10),
	description: "The modern bourgeois society that has sprouted from the ruins of feudal society has not done away with class antagonisms. It has but established new classes, new conditions of oppression, new forms of struggle in place of old ones.",
	location: "#{Faker::Address.full_address}",
	price: rand(10..800),
	wildlife: "Freddy",
	remote_photo_url: "http://66.media.tumblr.com/tumblr_mejsa0wMBH1qz7mf5o1_1280.png",
	user_id: User.last.id
	)

Tent.create(
	title: "Traditional Mongolian Yurt",
	capacity: rand(1..10),
	description: "The executive of the modern State is but a committee for managing the common affairs of the whole bourgeoisie.",
	location: "#{Faker::Address.full_address}",
	price: rand(10..800),
	wildlife: "Freddy",
	remote_photo_url: "https://gdb.rferl.org/B75F418A-99EB-484B-B73C-C18AB08971E1_w1200_r1_s.jpg",
	user_id: User.last.id
	)

Tent.create(
	title: "Teepee stolen from Native Americans",
	capacity: rand(1..10),
	description: "A specter is haunting Europe: the specter of Communism.",
	location: "#{Faker::Address.full_address}",
	price: rand(10..800),
	wildlife: "Freddy",
	remote_photo_url: "https://bespoketravelcompany.com/wp-content/uploads/2015/02/Chairman-Mao-Inspects-the-Gaungdong-Countryside.jpg",
	user_id: User.last.id
	)

Tent.create(
	title: "Homeless Mans Trashcan",
	capacity: rand(1..10),
	description: "Society as a whole is more and more splitting into two great hostile camps, into two great classes directly facing each other: Bourgeoisie and Proletariat.",
	location: "#{Faker::Address.full_address}",
	price: rand(10..800),
	wildlife: "Freddy",
	remote_photo_url: "https://bespoketravelcompany.com/wp-content/uploads/2015/02/Chairman-Mao-Inspects-the-Gaungdong-Countryside.jpg",
	user_id: User.last.id
	)

Tent.create(
	title: "Hillside Park",
	capacity: rand(1..10),
	description: "The Krusty Krab is unfair!",
	location: "#{Faker::Address.full_address}",
	price: rand(10..800),
	wildlife: "Freddy",
	remote_photo_url: "https://gdb.rferl.org/B75F418A-99EB-484B-B73C-C18AB08971E1_w1200_r1_s.jpg",
	user_id: User.last.id
	)

Tent.create(
	title: "Paradise Falls Beutiful Hut",
	capacity: rand(1..10),
	description: "...the theory of the Communists may be summed up in the single sentence: Abolition of private property",
	location: "#{Faker::Address.full_address}",
	price: rand(10..800),
	wildlife: "Freddy",
	remote_photo_url: "https://bespoketravelcompany.com/wp-content/uploads/2015/02/Chairman-Mao-Inspects-the-Gaungdong-Countryside.jpg",
	user_id: User.last.id
	)

Tent.create(
	title: "The Original Nut Hut, Extra Nut",
	capacity: rand(1..10),
	description:"We want fair pay Mr. Crabs!",
	location: "#{Faker::Address.full_address}",
	price: rand(10..800),
	wildlife: "Freddy",
	remote_photo_url: "http://66.media.tumblr.com/tumblr_mejsa0wMBH1qz7mf5o1_1280.png",
	user_id: User.last.id
	)

Tent.create(
	title: "Mountaintop Cave",
	capacity: rand(1..10),
	description: "The gentle labourer shall toil no more!",
	location: "#{Faker::Address.full_address}",
	price: rand(10..800),
	wildlife: "Freddy",
	remote_photo_url: "https://bespoketravelcompany.com/wp-content/uploads/2015/02/Chairman-Mao-Inspects-the-Gaungdong-Countryside.jpg",
	user_id: User.last.id
	)

Tent.create(
	title: "Underwater Cavern",
	capacity: rand(1..10),
	description: "Let the ruling classes tremble at a Communistic revolution. The proletarians have nothing to lose but their chains. WORKING MEN OF ALL COUNTRIES, UNITE!",
	location: "#{Faker::Address.full_address}",
	price: rand(10..800),
	wildlife: "Freddy",
	remote_photo_url: "https://gdb.rferl.org/B75F418A-99EB-484B-B73C-C18AB08971E1_w1200_r1_s.jpg",
	user_id: User.last.id
	)

t =Tent.create(
	title: "Lucious Treehouse",
	capacity: rand(1..10),
	description: "The bourgeoisie has torn away from the family its sentimental veil, and has reduced the family relation to a mere money relation.",
	location: "#{Faker::Address.full_address}",
	price: rand(10..800),
	wildlife: "Freddy",
	remote_photo_url: "http://66.media.tumblr.com/tumblr_mejsa0wMBH1qz7mf5o1_1280.png",
	user_id: User.last.id
	)

p "Seeding has been completed."