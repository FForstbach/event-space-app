
Venue.destroy_all
User.destroy_all

users = User.create([
  {
    email: "robin@test.de", password: "123456", password_confirmation: "123456",
    first_name: "robin", last_name: "Kemp"
  }, {
    email: "sarah@test.de", password: "123456", password_confirmation: "123456",
    first_name: "Sarah", last_name: "Willis"
  }]
)

venues = Venue.create!([{
  address: "Oranienstraße 5, Berlin", capacity: 200, city: "Berlin", category: "bar", price: 500,
  user: User.first, name: "Fusion Factory",
  remote_photo_url: "https://s-media-cache-ak0.pinimg.com/originals/97/83/55/9783552a8a82f1bec0f0ee16131abdf5.jpg"
  }, {
  address: "Weggasse 3, Wien", capacity: 300, city: "Wien", category: "clubs", price: 600,
  user: User.first, name: "Pandem",
  remote_photo_url: "http://www.zastavki.com/pictures/originals/2014/Cartoons_____The_party_on_the_space_ship_078107_.jpg"
  }, {
  address: "Römerpl. 1, 76530 Baden-Baden", capacity: 200, city: "Baden-Baden", category: "restaurants", price: 500,
  user: User.first, name: "Caracalla",
  remote_photo_url: "http://www.bizbash.com/content/editorial/StoryPhoto/big/e18576image4.jpg"
  }, {
  address: "Graben 30, Wien", capacity: 500, city: "Wien", category: "mixed usage", price: 1000,
  user: User.first, name: "Hell's Garden",
  remote_photo_url: "http://assets.inhabitat.com/wp-content/blogs.dir/1/files/2010/09/new-151.jpg"
  }, {
  address: "Plankengasse 5, Wien", capacity: 100, city: "wien", category: "bars", price: 700,
  user: User.first, name: "Bar of sins",
  remote_photo_url: "https://www.hiddencitysecrets.com.au/wp-content/uploads/2016/01/album5029_39351_berlin-bar-cocktail-party-venues-melbourne-venue-hire-cbd-small-function-spaces-birthday-rooms-private-functions-010.jpg"
  }, {
  address: "Sophienstraße 5, Berlin", capacity: 300, city: "berlin", category: "coworking", price: 900,
  user: User.first, name: "Work with style",
  remote_photo_url: "https://www.hiddencitysecrets.com.au/wp-content/uploads/2016/01/album5029_39343_berlin-bar-cocktail-party-venues-melbourne-venue-hire-cbd-small-function-spaces-birthday-rooms-private-functions-002.jpg"
  }, {
  address: "kantstraße 100, Berlin", capacity: 200, city: "berlin", category: "outdoor", price: 1500,
  user: User.last, name: "Nightlife",
  remote_photo_url: "http://static2.businessinsider.com/image/57e2fc28077dcc39128b7390-1200/berlin-nightlife.jpg"
  }, {
  address: "Prenzlauer Allee 150, Berlin", capacity: 800, city: "berlin", category: "mixed usage", price: 1000,
  user: User.last, name: "Corporate uncreativity",
  remote_photo_url: "https://de.fiylo.com/media/grosseorangerie-events-listimage-c639b0.jpg"
  }, {
  address: "Alexanderplatz 1, Berlin", capacity: 2000, city: "berlin", category: "outdoor", price: 300,
  user: User.last, name: "Creativity festival",
  remote_photo_url: "http://cdn.partyearth.com/photos/d29459f8ee17949f59a93587ac8bdfec/friedrichshain_s460.jpg?1374958180"
  }, {
  address: "Torstraße 15, Berlin", capacity: 3000, city: "berlin", category: "clubs", price: 900,
  user: User.last, name: "Show what you got",
  remote_photo_url: "https://s-media-cache-ak0.pinimg.com/originals/74/12/d3/7412d387ecb00da630ca9026eabbd2e0.jpg"
  }, {
  address: "Brüsseler Str. 11, 50674, Köln", capacity: 2000, city: "köln", category: "restaurants", price: 800,
  user: User.last, name: "Chill and Grill",
  remote_photo_url: "https://www.google.at/search?q=party+venues+berlin&source=lnms&tbm=isch&sa=X&ved=0ahUKEwjEzNSb48HTAhUTrRQKHd67CEkQ_AUIBygC&biw=1621&bih=779#imgrc=fZiTcsEz08D9GM:"
  }, {
  address: "Kärntnerstrasse 5, 1010 Wien", capacity: 300, city: "Wien", category: "clubs", price: 600,
  user: User.first, name: "Winter wonder land",
  remote_photo_url: "http://www.pub-lic.at/wp-content/uploads/2015/10/partyraum-wien-1060.jpg"
  }, {
  address: "Marktplatz 2,76530 Baden-Baden", capacity: 200, city: "Baden-Baden", category: "restaurants", price: 500,
  user: User.first, name: "Town House",
  remote_photo_url: "https://www.eventinc.at/system/provider_pictures/pictures/000/049/809/medium/eventlocation-wiener-rathauskeller-wien.jpg"
  }, {
  address: "Hasenauerstrasse 10, Wien", capacity: 500, city: "Wien", category: "mixed usage", price: 1000,
  user: User.first, name: "Grillplatz",
  remote_photo_url: "http://s.bazar.at/16-xl54w000-w4v3_m/grillplatz-partyraum-eventlocation.jpg"
  }, {
  address: "Spiegelgasse 8, Wien", capacity: 100, city: "wien", category: "bars", price: 700,
  user: User.first, name: "Red Room",
  remote_photo_url: "http://www.mietlokal.wien/images/fotos/artikel/ausklang_02.jpg"
  }, {
  address: "Augustrasse 8, Berlin", capacity: 300, city: "berlin", category: "coworking", price: 900,
  user: User.first, name: "Klopf auf Holz",
  remote_photo_url: "http://www.revezdailleurs.com/images/location-loft-atelier-paris.png"
  }, {
  address: "Kleine Hamburger Strasse 100, Berlin", capacity: 200, city: "berlin", category: "bars", price: 1500,
  user: User.last, name: "Light",
  remote_photo_url: "http://www.rentaclub.org/grafik/locations/1057/gallery/big/1337526442a.jpg"
  }, {
  address: "Potzdamer Platz 10, Berlin", capacity: 800, city: "berlin", category: "mixed usage", price: 1000,
  user: User.last, name: "Style Garden",
  remote_photo_url: "http://images.portal.muenchen.de/upload/media/000/000/108/584/scaled-down/0330x1000/locationbotanikum.jpg"
  }, {
  address: "Pariser Platz 1, Berlin", capacity: 2000, city: "berlin", category: "outdoor", price: 300,
  user: User.last, name: "Just Dance",
  remote_photo_url: "http://www.location-mieten.com/grafik/locations/755/gallery/big/1324399325a.jpg"
  }, {
  address: "Große Hamburgerstrasse 10, Berlin", capacity: 3000, city: "berlin", category: "clubs", price: 900,
  user: User.last, name: "Dance outside",
  remote_photo_url: "https://s-media-cache-ak0.pinimg.com/originals/c6/6b/c5/c66bc57ecf7a435374c10dab24ef4dbe.jpg"
  }, {
  address: "Brüsseler Str. 50, 50674, Köln", capacity: 2000, city: "köln", category: "restaurants
  ", price: 800,
  user: User.last, name: "Separet",
  remote_photo_url: "https://s-media-cache-ak0.pinimg.com/originals/47/70/10/477010ebfaabe68d90f999fdba7ba443.jpg"
  }]
)
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

