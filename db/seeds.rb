# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Article.destroy_all

User.destroy_all

user = User.create!({
  email: "testrezrererzerez@gmail.com",
  password: "password1",
  first_name: "Gilbert",
  last_name: "Montagnet",
  phone_number: "1234566"
  })


20.times do |a|
  Article.create!(
    user: user,
    name: Faker::Games::Pokemon.name,
    sport: ['Foot', 'Volley', 'tennis'].sample,
    description: Faker::Lorem.sentence,
    photo: 'https://source.unsplash.com/collection/1946916/600x300',
    price: [10, 20, 30, 40].sample.to_i ,
  )
end

