fast_food = Category.where(name: "Fast Food").first_or_create(name: "Fast Food")
seafood = Category.where(name: "Seafood").first_or_create(name: "Seafood")
steak = Category.where(name: "Steak House").first_or_create(name: "Steak House")
chinese = Category.where(name: "Chinese").first_or_create(name: "Chinese")
family = Category.where(name: "Family").first_or_create(name: "Family") 
coffee = Category.where(name: "Coffee").first_or_create(name: "Coffee") 

require 'ffaker'  
add_name = %w(House Grill Diner Eatery Express Shack)

 
500.times do 
restaurant = Restaurant.create(name: FFaker::CheesyLingo.title + (" ") + add_name[rand(add_name.length)], 
                              city: FFaker::AddressUS.city,
                          address1: FFaker::AddressUS.street_address,
                    state_provence: FFaker::AddressUS.state, 
                        category_id: fast_food.id, 
                        description: FFaker::BaconIpsum.paragraph,
                              image: open("app/assets/images/food/#{rand(1..30)}.jpg"),
                              phone: FFaker::PhoneNumber.phone_number,
                              email: FFaker::Internet.domain_name,
                        postalcode: FFaker::AddressUS.zip_code
                        )
puts restaurant.inspect                         
restaurant = Restaurant.create(name: FFaker::CheesyLingo.title + (" ") + add_name[rand(add_name.length)], 
                              city: FFaker::AddressUS.city,
                          address1: FFaker::AddressUS.street_address,
                    state_provence: FFaker::AddressUS.state, 
                        category_id: seafood.id, 
                        description: FFaker::BaconIpsum.paragraph,
                              image: open("app/assets/images/food/#{rand(1..30)}.jpg"),
                              phone: FFaker::PhoneNumber.phone_number,
                              email: FFaker::Internet.domain_name,
                        postalcode: FFaker::AddressUS.zip_code
                        )
puts restaurant.inspect                         
restaurant = Restaurant.create(name: FFaker::CheesyLingo.title + (" ") + add_name[rand(add_name.length)], 
                              city: FFaker::AddressUS.city,
                          address1: FFaker::AddressUS.street_address,
                    state_provence: FFaker::AddressUS.state, 
                        category_id: steak.id, 
                        description: FFaker::BaconIpsum.paragraph,
                              image: open("app/assets/images/food/#{rand(1..30)}.jpg"),
                              phone: FFaker::PhoneNumber.phone_number,
                              email: FFaker::Internet.domain_name,
                        postalcode: FFaker::AddressUS.zip_code
                        )
puts restaurant.inspect                         
restaurant = Restaurant.create(name: FFaker::CheesyLingo.title + (" ") + add_name[rand(add_name.length)], 
                              city: FFaker::AddressUS.city,
                          address1: FFaker::AddressUS.street_address,
                    state_provence: FFaker::AddressUS.state, 
                        category_id: chinese.id, 
                        description: FFaker::BaconIpsum.paragraph,
                              image: open("app/assets/images/food/#{rand(1..30)}.jpg"),
                              phone: FFaker::PhoneNumber.phone_number,
                              email: FFaker::Internet.domain_name,
                        postalcode: FFaker::AddressUS.zip_code
                        )
puts restaurant.inspect                         
restaurant = Restaurant.create(name: FFaker::CheesyLingo.title + (" ") + add_name[rand(add_name.length)], 
                              city: FFaker::AddressUS.city,
                          address1: FFaker::AddressUS.street_address,
                    state_provence: FFaker::AddressUS.state, 
                        category_id: family.id, 
                        description: FFaker::BaconIpsum.paragraph,
                              image: open("app/assets/images/food/#{rand(1..30)}.jpg"),
                              phone: FFaker::PhoneNumber.phone_number,
                              email: FFaker::Internet.domain_name,
                        postalcode: FFaker::AddressUS.zip_code
                        )
puts restaurant.inspect                         
restaurant = Restaurant.create(name: FFaker::CheesyLingo.title + (" ") + add_name[rand(add_name.length)], 
                              city: FFaker::AddressUS.city,
                          address1: FFaker::AddressUS.street_address,
                    state_provence: FFaker::AddressUS.state, 
                        category_id: coffee.id, 
                        description: FFaker::BaconIpsum.paragraph,
                              image: open("app/assets/images/food/#{rand(1..30)}.jpg"),
                              phone: FFaker::PhoneNumber.phone_number,
                              email: FFaker::Internet.domain_name,
                        postalcode: FFaker::AddressUS.zip_code
                        )                        
# puts restaurant.inspect      
sleep 2
end


# index = Page.find_or_initialize_by(id: "1")
# index.page_name = "Welcome to Lister"
# index.string_1 = "index string 1"
# index.string_2 = "index string 2"
# index.string_3 = "index string 3"
# index.string_4 = "index string 4"
# index.string_5 = "index string 5"
# index.string_6 = "index string 6"
# index.string_7 = "index string 7"
# index.string_8 = "index string 8"
# index.string_9 = "index string 9"
# index.string_10 = "index string 10"
# index.string_11 = "index string 11"
# index.string_12 = "index string 12"
# index.string_13 = "index string 13"
# index.string_14 = "index string 14"
# index.string_15 = "index string 15"
# index.string_16 = "index string 16"
# index.text_1 = "index text 1"
# index.text_2 = "index text 2"
# index.text_3 = "index text 3"
# index.text_4 = "index text 4"
# index.text_5 = "index text 5"
# index.text_6 = "index text 6"
# index.text_7 = "index text 7"
# index.text_8 = "index text 8"
# index.text_9 = "index text 9"
# index.text_10 = "index text 10"

# index.save!
# puts index.inspect

# about = Page.find_or_initialize_by(id: "2")
# about.page_name = "About Lister"
# about.string_1 = "about string 1"
# about.string_2 = "about string 2"
# about.string_3 = "about string 3"
# about.string_4 = "about string 4"
# about.string_5 = "about string 5"
# about.string_6 = "about string 6"
# about.string_7 = "about string 7"
# about.string_8 = "about string 8"
# about.string_9 = "about string 9"
# about.string_10 = "about string 10"
# about.string_11 = "about string 11"
# about.string_12 = "about string 12"
# about.string_13 = "about string 13"
# about.string_14 = "about string 14"
# about.string_15 = "about string 15"
# about.string_16 = "about string 16"
# about.text_1 = "about text 1"
# about.text_2 = "about text 2"
# about.text_3 = "about text 3"
# about.text_4 = "about text 4"
# about.text_5 = "about text 5"
# about.text_6 = "about text 6"
# about.text_7 = "about text 7"
# about.text_8 = "about text 8"
# about.text_9 = "about text 9"
# about.text_10 = "about text 10"
# about.integer_1 = "50"
# about.integer_2 = "50"
# about.integer_3 = "50"
# about.integer_4 = "50"

# about.save!
# puts about.inspect


# contact = Page.find_or_initialize_by(id: "3")
# contact.page_name = "Contact Lister"
# contact.string_1 = "contact string 1"
# contact.string_2 = "contact string 2"
# contact.string_3 = "contact string 3"
# contact.string_4 = "contact string 4"
# contact.string_5 = "contact string 5"
# contact.string_6 = "contact string 6"
# contact.string_7 = "contact string 7"
# contact.string_8 = "contact string 8"
# contact.string_9 = "contact string 9"
# contact.string_10 = "contact string 10"
# contact.string_11 = "contact string 11"
# contact.string_12 = "contact string 12"
# contact.string_13 = "contact string 13"
# contact.string_14 = "contact string 14"
# contact.string_15 = "contact string 15"
# contact.string_16 = "contact string 16"
# contact.text_1 = "contact text 1"
# contact.text_2 = "contact text 2"
# contact.text_3 = "contact text 3"
# contact.text_4 = "contact text 4"
# contact.text_5 = "contact text 5"
# contact.text_6 = "contact text 6"
# contact.text_7 = "contact text 7"
# contact.text_8 = "contact text 8"
# contact.text_9 = "contact text 9"
# contact.text_10 = "contact text 10"

# contact.save!
# puts contact.inspect
