
Treehouse.destroy_all
User.destroy_all
Booking.destroy_all


# params = { treehouse: {
#   User.create!({
#     first_name: "Peter ",
#     last_name: "Pan",
#     email: "peter@pan.com",
#     password:"peterpan",
#     treehouse_attributes: [
#       Treehouse.create!({
#         name: "La maison dans les bois",
#         category: "Entire place",
#         capacity: "4 people",
#         address: "18 Rue Beautreillis",
#         zip_code: "75004",
#         city: "Paris",
#         country:"France",
#         bed_count:"2",
#         tree_type:"Oak Tree",
#         rate:"200",
#         description:"Good looking tree and lot of wood furnitures",
#         photos:"app/san_francisco.jpg"
#         })]
#       }
#   })
# }

User.create!({
  first_name: "Yo",
  last_name: "Lo",
  email: "yo@lo.com",
  password: "yoloyolo"
})
Treehouse.create!({
  name: "Peter Pan maisonette",
  owner_id: 1,
  category: "Shared Room",
  capacity: '4 people',
  address: "Van Arteveldestraat 1",
  zip_code: "1000",
  city: "Brussels",
  country:"Belgium",
  bed_count:"3",
  tree_type:"Cherry Tree",
  rate: 160,
  description:"because we love cherry"
})
Booking.create!({
  start_date: "30/02/2017",
  end_date: "01/03/2017",
  guest_count:"2",
  treehouse_id:1,
  renter_id:1
})


User.create!({
  first_name: "bob",
  last_name: "builder",
  email: "bob@builder.com",
  password: "bobbuilder"
})
Treehouse.create!({
  name: "Bob builder workshop",
  owner_id: 2,
  category: "Shared Room",
  capacity: '2 people',
  address: "3 larsen avenue ",
  zip_code: "11547",
  city: "Glenwood Landing",
  country:"USA",
  bed_count:"2",
  tree_type:"Oak Tree",
  rate: 116,
  description:"come sleep with Bob"

  })
Booking.create!({
  start_date: "12/04/2017",
  end_date: "01/05/2017",
  guest_count:"4",
  treehouse_id:2,
  renter_id:2
})


User.create!({
  first_name: "frere ",
  last_name: "jacques",
  email: "frere@jacques.com",
  password: "frerejacque"
})
Treehouse.create!({
  name: "frerejacque maisonette",
  owner_id: 1,
  category: "Shared Room",
  capacity: '4 people',
  address: "197 rue de Londres",
  zip_code: "59420",
  city: "Mouvaux",
  country:"France",
  bed_count:"3",
  tree_type:"Lemon Tree",
  rate: 1607,
  description:"because we love cheese"
})
Booking.create!({
  start_date: "20/06/2017",
  end_date: "01/06/2017",
  guest_count:"2",
  treehouse_id:3,
  renter_id:3
})


User.create!({
  first_name: "Johnny",
  last_name: "Utah",
  email: "kiki@ki.com",
  password: "kikiki"
})
Treehouse.create!({
  name: "CBGB Flophouse",
  owner_id: 4,
  category: "Shared Room",
  capacity: '4 people',
  address: "315 Bowery",
  zip_code: "10003",
  city: "New York",
  country:"USA",
  bed_count:"3",
  tree_type:"Punk Tree",
  rate: 160,
  description:"Rock out with The Ramones"
})
Booking.create!({
  start_date: "30/02/2017",
  end_date: "01/03/2017",
  guest_count:"2",
  treehouse_id:4,
  renter_id:4
})


User.create!({
  first_name: "Laure",
  last_name: "Voldemord",
  email: "laure@Voldemord.com",
  password: "laurevoldemord"
})
Treehouse.create!({
  name: "Voldemord maisonette",
  owner_id: 5,
  category: "Shared Room",
  capacity: '1 people',
  address: "176 rue de londres ",
  zip_code: "59430",
  city: "Mouvaux",
  country:"France",
  bed_count:"1",
  tree_type:"DarkTree very scary",
  rate: 16088,
  description:"Im in love with Dumbledore"
})
Booking.create!({
  start_date: "30/02/2017",
  end_date: "01/03/2017",
  guest_count:"2",
  treehouse_id:5,
  renter_id:5
})


User.create!({
  first_name: "tristan",
  last_name: "and yseult",
  email: "tristan@yseult.com",
  password: "tristanyseult"
})
Treehouse.create!({
  name: " Into the tree",
  owner_id: 6,
  category: "Shared Room",
  capacity: '2 people',
  address: " Av. Casal Ribeiro 28",
  zip_code: "1000-092",
  city: "Lisboa",
  country:"Portugal",
  bed_count:"1",
  tree_type:"Cherry Tree",
  rate:160,
  description:"because we love cherry"
})
Booking.create!({
  start_date: "30/02/2017",
  end_date: "01/03/2017",
  guest_count:"1",
  treehouse_id:6,
  renter_id:6
})

# Booking.create!({
#   start_date: "30/02/2017",
#   end_date: "01/03/2017",
#   guest_count:"2"
# })

# Booking.create!({
#   start_date: "30/02/2017",
#   end_date: "01/03/2017",
#   guest_count:"2"
# })

# # rails db:drop
# # rails db:create
# # rails db:migrate
# # rails db:seed
