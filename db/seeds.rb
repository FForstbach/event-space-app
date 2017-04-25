
users = User.create([
  {
    email: "hans@test.de", password: "abcdef"
  }, {
    email: "megan@test.de", password: "defghi"
  }]
)

venues = Venue.create([{
  address: "Hauptstrasse 2", capacity: 200, category: "flat", price: 500,
  user_id: 2, name: "Fusion Factory"}])



# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

