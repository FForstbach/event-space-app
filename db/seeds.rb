
users = User.create([
  {
    email: "hans@test.de", password: "abcdef", password_confirmation: "abcdef",
    first_name: "hans", last_name: "diboid"
  }, {
    email: "megan@test.de", password: "defghi", password_confirmation: "defghi",
    first_name: "Megan", last_name: "Marple"
  }, {
    email: "sarah@test.de", password: "defghi", password_confirmation: "defghi",
    first_name: "Sarah", last_name: "Pepple"
  }]
)

venues = Venue.create([{
  address: "Hauptstrasse 2", capacity: 200, category: "flat", price: 500,
  user_id: 2, name: "Fusion Factory",
  photo: "https://s-media-cache-ak0.pinimg.com/originals/97/83/55/9783552a8a82f1bec0f0ee16131abdf5.jpg"
  }, {
  address: "Weggasse 3", capacity: 300, category: "house", price: 600,
  user_id: 3, name: "Pandem",
  photo: "http://www.zastavki.com/pictures/originals/2014/Cartoons_____The_party_on_the_space_ship_078107_.jpg"
  }, {
  address: "Mohnweg 3", capacity: 200, category: "garden", price: 500,
  user_id: 3, name: "Garden Eden",
  photo: "http://www.bizbash.com/content/editorial/StoryPhoto/big/e18576image4.jpg"
  }]
)



# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

