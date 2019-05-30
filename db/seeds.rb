puts "destroy_all"
Booking.destroy_all
Article.destroy_all
User.destroy_all

ricky = User.create!(
  first_name: "Ricky",
  last_name: "Bobby",
  email: "ricky@bobby.com",
  password: "azerty",
  address: "lille",
  picture: "/images/ricky-bobby"
  )
  
tony = User.create!(
  first_name: "Tony",
  last_name: "Vairelles",
  email: "tony@vairelles.com",
  password: "azerty",
  address: "paris",
  picture: "https://img.sport.gentside.com/article/480/as-nancy/tony-vairelles-c-etait-d-abord-un-look_8a89b42b5b45c3e2795d31554148a66aa5c80604.jpg"
)

url = "https://source.unsplash.com/800x600/?soccer,ball"

10.times do
  article = Article.new(
    user: [tony, ricky].sample,
    name: "Ballon",
    description: "parfait",
    sport: ["Football", "Tennis", "Volleyball"].sample,
    price: rand(1..50)
    )
    article.remote_photo_url = url
    article.save!
end