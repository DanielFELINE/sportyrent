puts "destroy_all"
Booking.destroy_all
Article.destroy_all
User.destroy_all

url_francois = "https://res.cloudinary.com/dom4dvol9/image/upload/v1559232777/2f797ae0-cc42-11e1-ab47-03a33215defe-800x532_l4durv.jpg"
url_ricky = "https://res.cloudinary.com/dom4dvol9/image/upload/v1559215991/go4lrymdi9hpvtadnbap.jpg"
url_tony = "https://res.cloudinary.com/dom4dvol9/image/upload/v1559217500/ommrsk4bl6yyudcpn3av.jpg"

francois = User.new(
  first_name: "Francois",
  last_name: "Dupont",
  email: "francois@dupont.com",
  password: "azerty",
  address: "1 rue basse 59000 lille",
  )
  francois.remote_photo_url = url_francois
  francois.save!

ricky = User.new(
  first_name: "Ricky",
  last_name: "Bobby",
  email: "ricky@bobby.com",
  password: "azerty",
  address: "5 rue gambetta lille",
  )
  ricky.remote_photo_url = url_ricky
  ricky.save!


tony = User.new(
  first_name: "Tony",
  last_name: "Vairelles",
  email: "tony@vairelles.com",
  password: "azerty",
  address: "19 rue solferino lille",
  )
  tony.remote_photo_url = url_tony
  tony.save!


url_foot = "https://source.unsplash.com/800x600/?soccer,ball"
url_tennis = "https://source.unsplash.com/800x600/?tennis,ball"
url_volley = "https://source.unsplash.com/800x600/?volleyball,ball"

6.times do
  article = Article.new(
    user: [tony, ricky].sample,
    name: "Ballon",
    description: "parfait",
    sport: "Football",
    price: rand(1..50)
    )
    article.remote_photo_url = url_foot
    article.save!

    article2 = Article.new(
    user: [tony, ricky].sample,
    name: "Balles",
    description: "super",
    sport: "Tennis",
    price: rand(1..50)
    )
    article2.remote_photo_url = url_tennis
    article2.save!

    article3 = Article.new(
    user: [tony, ricky].sample,
    name: "Ballon",
    description: "génial",
    sport: "Volleyball",
    price: rand(1..50)
    )
    article3.remote_photo_url = url_volley
    article3.save!
end