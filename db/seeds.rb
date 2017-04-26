
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
  address: "Hauptstrasse 2", capacity: 200, city: "Berlin", category: "Bar", price: 500,
  user_id: 2, name: "Fusion Factory",
  photo: "https://s-media-cache-ak0.pinimg.com/originals/97/83/55/9783552a8a82f1bec0f0ee16131abdf5.jpg"
  }, {
  address: "Weggasse 3", capacity: 300, city: "Wien", category: "Clubs", price: 600,
  user_id: 3, name: "Pandem",
  photo: "http://www.zastavki.com/pictures/originals/2014/Cartoons_____The_party_on_the_space_ship_078107_.jpg"
  }, {
  address: "Mohnweg 3", capacity: 200, city: "Baden-Baden", category: "Restaurants", price: 500,
  user_id: 3, name: "Garden Eden",
  photo: "http://www.bizbash.com/content/editorial/StoryPhoto/big/e18576image4.jpg"
  }, {
  address: "Highway to hell 5", capacity: 500, city: "Hellheim", category: "Mixed Usage", price: 1000,
  user_id: 3, name: "Hell's Garden",
  photo: "http://assets.inhabitat.com/wp-content/blogs.dir/1/files/2010/09/new-151.jpg"
  }, {
  address: "Barroad 6", capacity: 100, city: "Salzburg", category: "Bars", price: 700,
  user_id: 3, name: "Bar of sins",
  photo: "https://www.hiddencitysecrets.com.au/wp-content/uploads/2016/01/album5029_39351_berlin-bar-cocktail-party-venues-melbourne-venue-hire-cbd-small-function-spaces-birthday-rooms-private-functions-010.jpg"
  }, {
  address: "Meislweg 6", capacity: 300, city: "Hannover", category: "Coworking", price: 900,
  user_id: 3, name: "Work with style",
  photo: "https://www.hiddencitysecrets.com.au/wp-content/uploads/2016/01/album5029_39343_berlin-bar-cocktail-party-venues-melbourne-venue-hire-cbd-small-function-spaces-birthday-rooms-private-functions-002.jpg"
  }, {
  address: "Superroad 6", capacity: 200, city: "Munich", category: "Outdoor", price: 1500,
  user_id: 3, name: "Work with style",
  photo: "http://static2.businessinsider.com/image/57e2fc28077dcc39128b7390-1200/berlin-nightlife.jpg"
  }, {
  address: "Boring road 1", capacity: 800, city: "Bremen", category: "Mixed Usage", price: 1000,
  user_id: 3, name: "corporate uncreativity",
  photo: "https://de.fiylo.com/media/grosseorangerie-events-listimage-c639b0.jpg"
  }, {
  address: "Funky street 99", capacity: 2000, city: "Berlin", category: "Outdoor", price: 300,
  user_id: 3, name: "creativity festival",
  photo: "http://cdn.partyearth.com/photos/d29459f8ee17949f59a93587ac8bdfec/friedrichshain_s460.jpg?1374958180"
  }, {
  address: "Naked road 23", capacity: 3000, city: "Berlin", category: "Clubs", price: 900,
  user_id: 3, name: "show what you got",
  photo: "https://s-media-cache-ak0.pinimg.com/originals/74/12/d3/7412d387ecb00da630ca9026eabbd2e0.jpg"
  }, {
  address: "Relaxed road 23", capacity: 2000, city: "Innsbruck", category: "Restaurants", price: 800,
  user_id: 3, name: "chill and grill",
  photo: "https://www.google.at/search?q=party+venues+berlin&source=lnms&tbm=isch&sa=X&ved=0ahUKEwjEzNSb48HTAhUTrRQKHd67CEkQ_AUIBygC&biw=1621&bih=779#imgrc=fZiTcsEz08D9GM:"
  }]
)



# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

