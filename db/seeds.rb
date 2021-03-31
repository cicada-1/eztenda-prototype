require 'open-uri'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Creating seeds..."
puts "Creating 12 users"
#Users

user1 = User.create!(email: "user1@mail.com", password: "123456")
user2 = User.create!(email: "user2@mail.com", password: "123456")
user3 = User.create!(email: "user3@mail.com", password: "123456")
user4 = User.create!(email: "user4@mail.com", password: "123456")
user5 = User.create!(email: "user5@mail.com", password: "123456")
user6 = User.create!(email: "user6@mail.com", password: "123456")
user7 = User.create!(email: "user7@mail.com", password: "123456")
user8 = User.create!(email: "user8@mail.com", password: "123456")
user9 = User.create!(email: "user9@mail.com", password: "123456")
user10 = User.create!(email: "user10@mail.com", password: "123456")
user11 = User.create!(email: "user11@mail.com", password: "123456")
user12 = User.create!(email: "user12@mail.com", password: "123456")


puts "creating 6 venues"
#Venues
venue1 = Venue.create!(venue_name: "Bar Stock Exchange",
                    #    email: "barstockex@mail.com",
                    #    password: "123456",
                       address: "Madison Square, Left Avenue WO 0YT",
                       phone_number: "+44986453625",
                       description: "Lets play drink-stocks!",
                       user_id: user1.id
)

venue2 = Venue.create!(venue_name: "The White Swan",
                    #    email: "thewhiteswan@mail.com",
                    #    password: "123456",
                       address: "Pam Street, E1",
                       phone_number: "",
                       description: "Your next party destination",
                       user_id: user2.id
)

venue3 = Venue.create!(venue_name: "Plough and Harrow",
                    #    email: "plough@mail.com",
                    #    password: "123456",
                       address: "12 Next Avenue W6 0PF",
                       phone_number: "+443526970",
                       description: "Your friendly neighbourhood pub",
                       user_id: user3.id
)

venue4 = Venue.create!(venue_name: "Karma Club",
                    #    email: "karmaclub@mail.com",
                    #    password: "123456",
                       address: "14, East street, C1 987",
                       phone_number: "+44462629383",
                       description: "The best social",
                       user_id: user4.id
)

venue5 = Venue.create!(venue_name: "Bar Louis",
                        # email: "barlouis@mail.com",
                        # password: "123456",
                        address: "Wiking street, Rose Avenue EC1 98",
                        phone_number: "+44462629010",
                        description: "The corner bar",
                        user_id: user5.id
)

venue6 = Venue.create!(venue_name: "Tabula Rasa",
                    #    email: "tabula@mail.com",
                    #    password: "123456",
                       address: "23 Rant West , Avenue 2 Y3 987",
                       phone_number: "+44462629383",
                       description: "The best social",
                       user_id: user6.id
)

puts "creating 6 brands"
#Brands
brand1 = Brand.create!(brand_name: "Echo Falls",
                    #    email: "brand1@mail.com",
                    #    password: "123456",
                       address: "12, Lower East E1 H78",
                       phone_number: "+44236253798",
                       description: "We’re here to make your ordinary feel extraordinary. From our delicious Fruit Fusions, to smooth reds and refreshing whites, we've got a product for you.",
                       user_id: user7.id
)

brand2 = Brand.create!(brand_name: "Bacardi",
                    #    email: "brand2@mail.com",
                    #    password: "123456",
                       address: "Albion Road North PT 876",
                       phone_number: "+44985342526",
                       description: "From a family dream in 1800’s Cuba, to celebrating the moments that matter today to our global community, this is the Bacardi story – over 150 years of bringing people together.",
                       user_id: user8.id
)

brand3 = Brand.create!(brand_name: "Jack Daniel's",
                    #    email: "brand3@mail.com",
                    #    password: "123456",
                       address: "Pullman Street TR 567",
                       phone_number: "+44986543009",
                       description: "Your favourite whisky brand",
                       user_id: user9.id
)

brand4 = Brand.create!(brand_name: "Gordon's",
                    #    email: "brand4@mail.com",
                    #    password: "123456",
                       address: "Windmill Street UI T65",
                       phone_number: "+4491222218",
                       description: "Gordon's high quality and distinctive juniper flavour has come to define the taste of the classic G&T. Gordon's today is a gin that's enjoyed, not dissected.",
                       user_id: user10.id
)

brand5 = Brand.create!(brand_name: "Peroni",
                    #    email: "brand5@mail.com",
                    #    password: "123456",
                       address: "La Mane Street YU *&^",
                       phone_number: "+4498",
                       description: "A STORY FROM ITALY In 1963, the Peroni family set out to create a beer that embodied Italian values of quality and craftsmanship. Since then, it’s been brewed with the same flair and attention to detail – delivering crisp, refreshing beers that are perfect for any occasion.",
                       user_id: user11.id
)

brand6 = Brand.create!(brand_name: "Absolut Vodka",
                    #    email: "brand6@mail.com",
                    #    password: "123456",
                       address: "East avenue EC IR5",
                       phone_number: "+4494323558",
                       description: "Absolut Vodka is still a unique character, in both design and taste. Still ridiculously curious about creativity, collaborations and art. And still the key player for the perfect mix in any social occasion. And since all vodka from Absolut is produced in Southern Sweden, our superb vodka tasted exactly the same then as it does now. Nothing has changed.",
                       user_id: user12.id
)

puts "Creating 6 Offers"
#Offers

offer1 = Offer.create!(venue_id: venue1.id, min_bid: "2500", contract_length: "24 months", estimated_volume: "1500 bottles", category: "Whisky")
offer2 = Offer.create!(venue_id: venue2.id, min_bid: "3000", contract_length: "24 months", estimated_volume: "1400 bottles", category: "Gin")
offer3 = Offer.create!(venue_id: venue3.id, min_bid: "2750", contract_length: "12 months", estimated_volume: "500 bottles", category: "Vodka")
offer4 = Offer.create!(venue_id: venue4.id, min_bid: "1500", contract_length: "18 months", estimated_volume: "1000 bottles", category: "Vodka")
offer5 = Offer.create!(venue_id: venue5.id, min_bid: "4000", contract_length: "20 months", estimated_volume: "1200 bottles", category: "Gin")
offer6 = Offer.create!(venue_id: venue6.id, min_bid: "3200", contract_length: "20 months", estimated_volume: "1200 bottles", category: "Rum")

puts "Creating 6 bids"

bid1 = Bid.create!(brand_id: brand6.id, offer_amount: "2800", additional: "200 Branded glasses", offer_id: offer3.id)
bid2 = Bid.create!(brand_id: brand4.id, offer_amount: "1500", additional: "100 Branded T-shirts", offer_id: offer2.id)
bid3 = Bid.create!(brand_id: brand3.id, offer_amount: "2800", additional: "800 Branded coasters", offer_id: offer1.id)
bid4 = Bid.create!(brand_id: brand4.id, offer_amount: "3500", additional: "500 Branded glasses", offer_id: offer5.id)
bid5 = Bid.create!(brand_id: brand6.id, offer_amount: "4200", additional: "100 Branded glasses", offer_id: offer4.id)
bid6 = Bid.create!(brand_id: brand2.id, offer_amount: "3500", additional: "200 Branded caps", offer_id: offer6.id)

puts "Created 12 Users, 6 Brands, 6 Venues 6 Offers, 6 Bids"
