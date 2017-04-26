
Venue.destroy_all
User.destroy_all

users = User.create([
  {
    email: "robin@test.de", password: "abcdef", password_confirmation: "abcdef",
    first_name: "robin", last_name: "Kemp"
  }, {
    email: "sarah@test.de", password: "defghi", password_confirmation: "defghi",
    first_name: "Sarah", last_name: "Willis"
  }, {
    email: "gordon@test.de", password: "rdghij", password_confirmation: "rdghij",
    first_name: "Gordon", last_name: "Euller"
  }]
)

venues = Venue.create([{
  address: "Oranienstraße 5, Berlin", capacity: 200, city: "berlin", category: "bar", price: 500,
  user_id: 1, name: "Fusion Factory",
  photo: "https://s-media-cache-ak0.pinimg.com/originals/97/83/55/9783552a8a82f1bec0f0ee16131abdf5.jpg"
  }, {
  address: "Weggasse 3, Wien", capacity: 300, city: "wien", category: "clubs", price: 600,
  user_id: 3, name: "Pandem",
  photo: "http://www.zastavki.com/pictures/originals/2014/Cartoons_____The_party_on_the_space_ship_078107_.jpg"
  }, {
  address: "Römerpl. 1, 76530 Baden-Baden", capacity: 200, city: "baden-baden", category: "restaurants", price: 500,
  user_id: 1, name: "Caracalla",
  photo: "http://www.bizbash.com/content/editorial/StoryPhoto/big/e18576image4.jpg"
  }, {
  address: "Weggasse 30, Wien", capacity: 500, city: "wien", category: "mixed usage", price: 1000,
  user_id: 3, name: "Hell's Garden",
  photo: "http://assets.inhabitat.com/wp-content/blogs.dir/1/files/2010/09/new-151.jpg"
  }, {
  address: "Plankengasse 5, Wien", capacity: 100, city: "wien", category: "bars", price: 700,
  user_id: 3, name: "Bar of sins",
  photo: "https://www.hiddencitysecrets.com.au/wp-content/uploads/2016/01/album5029_39351_berlin-bar-cocktail-party-venues-melbourne-venue-hire-cbd-small-function-spaces-birthday-rooms-private-functions-010.jpg"
  }, {
  address: "Sophienstraße 5, Berlin", capacity: 300, city: "berlin", category: "coworking", price: 900,
  user_id: 1, name: "Work with style",
  photo: "https://www.hiddencitysecrets.com.au/wp-content/uploads/2016/01/album5029_39343_berlin-bar-cocktail-party-venues-melbourne-venue-hire-cbd-small-function-spaces-birthday-rooms-private-functions-002.jpg"
  }, {
  address: "kantstraße 100, Berlin", capacity: 200, city: "berlin", category: "outdoor", price: 1500,
  user_id: 1, name: "Nightlife",
  photo: "http://static2.businessinsider.com/image/57e2fc28077dcc39128b7390-1200/berlin-nightlife.jpg"
  }, {
  address: "Prenzlauer Allee 150, Berlin", capacity: 800, city: "berlin", category: "mixed usage", price: 1000,
  user_id: 3, name: "Corporate uncreativity",
  photo: "https://de.fiylo.com/media/grosseorangerie-events-listimage-c639b0.jpg"
  }, {
  address: "Alexanderplatz 1, Berlin", capacity: 2000, city: "berlin", category: "outdoor", price: 300,
  user_id: 2, name: "Creativity festival",
  photo: "http://cdn.partyearth.com/photos/d29459f8ee17949f59a93587ac8bdfec/friedrichshain_s460.jpg?1374958180"
  }, {
  address: "Torstraße 15, Berlin", capacity: 3000, city: "berlin", category: "clubs", price: 900,
  user_id: 2, name: "Show what you got",
  photo: "https://s-media-cache-ak0.pinimg.com/originals/74/12/d3/7412d387ecb00da630ca9026eabbd2e0.jpg"
  }, {
  address: "Brüsseler Str. 11, 50674, Köln", capacity: 2000, city: "köln", category: "restaurants", price: 800,
  user_id: 2, name: "Chill and Grill",
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

