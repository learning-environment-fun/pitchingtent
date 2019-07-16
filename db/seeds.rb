# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Tent.destroy_all

tent1 = Tent.create!(
 title: "Cabin in the Woods",
 capacity: 5,
 description: "Lovely cabin in the woods, located on the edge of Lake Wakakiki",
 location: "Mount Tahoe, Buttland",
 price: 150,
 wildlife: "Turkey, Bear, Trout, Bald Eagle",
 photo: "j",
)

tent1 = Tent.create!(
 title: "Cabin in the Woods",
 capacity: 5,
 description: "Lovely cabin in the woods, located on the edge of Lake Wakakiki",
 location: "Mount Tahoe, Buttland",
 price: 150,
 wildlife: "Turkey, Bear, Trout, Bald Eagle",
 photo: "j",
)

tent1 = Tent.create!(
 title: "Cabin in the Woods",
 capacity: 5,
 description: "Lovely cabin in the woods, located on the edge of Lake Wakakiki",
 location: "Mount Tahoe, Buttland",
 price: 150,
 wildlife: "Turkey, Bear, Trout, Bald Eagle",
 photo: "j",
)

tent1 = Tent.create!(
 title: "Cabin in the Woods",
 capacity: 5,
 description: "Lovely cabin in the woods, located on the edge of Lake Wakakiki",
 location: "Mount Tahoe, Buttland",
 price: 150,
 wildlife: "Turkey, Bear, Trout, Bald Eagle",
 photo: "j",
)

p "DB seeded!"