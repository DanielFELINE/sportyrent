# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Article.destroy_all

ricky = User.create!(
  first_name: "Ricky",
  last_name: "Bobby",
  email: "ricky@bobby.com",
  password: "azerty",
  address: "lille",
  picture: "/images/ricky-bobby"
)

Michel = User.create!(
  first_name: "Tony",
  last_name: "Vairelles",
  email: "tony@vairelles.com",
  password: "azerty",
  address: "paris",
  picture: "https://img.sport.gentside.com/article/480/as-nancy/tony-vairelles-c-etait-d-abord-un-look_8a89b42b5b45c3e2795d31554148a66aa5c80604.jpg"
)

10.times do |article|
  Article.create!(
    name: "Ballon"
    description: "parfait",
    sport: ["Football", "Tennis", "Volleyball"].sample,
    photo: "https://source.unsplash.com/1600x900/?football,ball",
    user_id: [1, 2].sample 
    )
end
