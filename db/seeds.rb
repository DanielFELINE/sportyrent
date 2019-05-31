puts "destroy_all"
Booking.destroy_all
Article.destroy_all
User.destroy_all

url_francois = "https://res.cloudinary.com/dom4dvol9/image/upload/v1559297603/250px-Fran_C3_A7ois_Hollande_-_2017__2827869823159_29__28cropped_2_29_zaumaa.jpg"
url_ricky = "https://res.cloudinary.com/dom4dvol9/image/upload/v1559215991/go4lrymdi9hpvtadnbap.jpg"
url_tony = "https://res.cloudinary.com/dom4dvol9/image/upload/v1559217500/ommrsk4bl6yyudcpn3av.jpg"

francois = User.new(
  first_name: "Francois",
  last_name: "H",
  email: "francois@H.com",
  password: "azerty",
  address: "1 rue basse 59000 lille",
)
francois.remote_picture_url = url_francois
francois.save!

ricky = User.new(
  first_name: "Ricky",
  last_name: "Bobby",
  email: "ricky@bobby.com",
  password: "azerty",
  address: "5 rue gambetta 59000 lille",
)
ricky.remote_picture_url = url_ricky
ricky.save!


tony = User.new(
  first_name: "Tony",
  last_name: "Vairelles",
  email: "tony@vairelles.com",
  password: "azerty",
  address: "19 rue solferino 59000 lille",
)
tony.remote_picture_url = url_tony
tony.save!

puts "3 users"

url_article1 = "https://res.cloudinary.com/dom4dvol9/image/upload/v1559051707/sirmmzpb49pmksp2zecz.jpg"
url_article2 = "https://res.cloudinary.com/dom4dvol9/image/upload/v1559055548/stify5zgshymo9yp9j6v.jpg"
url_article3 = "https://res.cloudinary.com/dom4dvol9/image/upload/v1559129080/nqh7wla1o6envvxy2eiy.jpg"
url_article4 = "https://res.cloudinary.com/dom4dvol9/image/upload/v1559138824/tc0pbhfkkdoqu7likpy2.jpg"
url_article5 = "https://res.cloudinary.com/dom4dvol9/image/upload/v1559218600/inh8jetyjoqtoldkl4k2.jpg"
url_article6 = "https://res.cloudinary.com/dom4dvol9/image/upload/v1559218667/ufvkwpcmbg23qbrxvt0n.jpg"
url_article7 = "https://res.cloudinary.com/dom4dvol9/image/upload/v1559223589/ko1ncymwyq82xzrju6pa.jpg"
url_article8 = "https://res.cloudinary.com/dom4dvol9/image/upload/v1559228823/fnxheg1nrt0jdnmreocl.jpg"
url_article9 = "https://res.cloudinary.com/dom4dvol9/image/upload/v1559293202/hqdefault_cww92q.jpg"
url_article10 = "https://res.cloudinary.com/dom4dvol9/image/upload/v1559061356/mwxri4x13juyfvjugyre.jpg"
url_article11 = "https://res.cloudinary.com/dom4dvol9/image/upload/v1559138919/d7ozouxsvofmteii3dmv.jpg"
url_article12 = "https://res.cloudinary.com/dom4dvol9/image/upload/v1559139147/fp0kkdturgxunads5qpo.jpg"
url_article13 = "https://res.cloudinary.com/dom4dvol9/image/upload/v1559139002/qtg8gq2p2e0lil1nchkw.jpg"
url_article14 = "https://res.cloudinary.com/dom4dvol9/image/upload/v1559293578/s736629052416759275_p41_i2_w640_qwdghr.png"
url_article15 = "https://res.cloudinary.com/dom4dvol9/image/upload/v1559135473/kneyfrbhswmsznhszy6r.jpg"
url_article16 = "https://res.cloudinary.com/dom4dvol9/image/upload/v1559139048/c8v7bdvkdhlropxmkdno.jpg"
url_article17 = "https://res.cloudinary.com/dom4dvol9/image/upload/v1559061356/mwxri4x13juyfvjugyre.jpg"
url_article18 = "https://res.cloudinary.com/dom4dvol9/image/upload/v1559139184/t2avvchlwltrqdauekgl.jpg"


article1 = Article.new(
  user: francois,
  name: "Ballon",
  description: "Très rond",
  sport: "Football",
  price: 8
)
article1.remote_photo_url = url_article1
article1.save!

article3 = Article.new(
  user: ricky,
  name: "Ballon",
  description: "Fait un peu mal aux avant-bras",
  sport: "Volleyball",
  price: 10
)
article3.remote_photo_url = url_article3
article3.save!

article2 = Article.new(
  user: tony,
  name: "Jolie raquette de tennis",
  description: "jamé servi j'aime pa le tennis",
  sport: "Tennis",
  price: 12
)
article2.remote_photo_url = url_article2
article2.save!

article4 = Article.new(
  user: francois,
  name: "Protège-tibias",
  description: "Pour protéger les tibias",
  sport: "Football",
  price: 6
)
article4.remote_photo_url = url_article4
article4.save!

article5 = Article.new(
  user: tony,
  name: "Equipe féminine",
  description: "Elle zont pas frois o zieu",
  sport: "Volleyball",
  price: 100
)
article5.remote_photo_url = url_article5
article5.save!

article6 = Article.new(
  user: ricky,
  name: "Lot de raquette",
  description: "Comme neuf pour jouer à 2",
  sport: "Tennis",
  price: 20,
)
article6.remote_photo_url = url_article6
article6.save!

article7 = Article.new(
  user: francois,
  name: "Grande raquette",
  description: "Pratique si vous avez des petits bras",
  sport: "Tennis",
  price: 15
)
article7.remote_photo_url = url_article7
article7.save!

article8 = Article.new(
  user: tony,
  name: "Chaussures de foot avec des crampons",
  description: "Cé les mienne é el mark plin de but",
  sport: "Football",
  price: 30
)
article8.remote_photo_url = url_article8
article8.save!

article9 = Article.new(
  user: ricky,
  name: "Maillot pour jouer au beach volley",
  description: "Très sexy, i like",
  sport: "Volleyball",
  price: 4
)
article9.remote_photo_url = url_article9
article9.save!

article10 = Article.new(
  user: francois,
  name: "Filet",
  description: "Peu de trous",
  sport: "Tennis",
  price: 10
)
article10.remote_photo_url = url_article10
article10.save!

article12 = Article.new(
  user: ricky,
  name: "Lot de ballon",
  description: "Pour ceux qui aiment beaucoup taper dans le ballon",
  sport: "Football",
  price: 30,
)
article12.remote_photo_url = url_article12
article12.save!

article11 = Article.new(
  user: tony,
  name: "shosset",
  description: "sous vent lavé pa tro 2 trou",
  sport: "Tennis",
  price: 15
)
article11.remote_photo_url = url_article11
article11.save!

article14 = Article.new(
  user: tony,
  name: "1 ballon",
  description: "Pour joué ô vollay",
  sport: "Volleyball",
  price: 8
)
article14.remote_photo_url = url_article14
article14.save!

article13 = Article.new(
  user: francois,
  name: "Court Central de RG",
  description: "J'ai mes entrées VIP pour ceux qui voudraient taper la balle en douce",
  sport: "Tennis",
  price: 150
)
article13.remote_photo_url = url_article13
article13.save!


article15 = Article.new(
  user: ricky,
  name: "Buts pour enfants",
  description: "c'est un but pour enfant",
  sport: "Football",
  price: 19
)
article15.remote_photo_url = url_article15
article15.save!

article16 = Article.new(
  user: francois,
  name: "Nou Camp",
  description: "J'ai aussi mes entrées VIP pour louer le Nou Camp",
  sport: "Football",
  price: 15000000
)
article16.remote_photo_url = url_article16
article16.save!


article18 = Article.new(
  user: ricky,
  name: "Raquette",
  description: "Pour faire des blagues",
  sport: "Tennis",
  price: 5,
  )
  article18.remote_photo_url = url_article18
  article18.save!

article17 = Article.new(
  user: tony,
  name: "Filé",
  description: "cé 1 filé",
  sport: "Tennis",
  price: 7
)
article17.remote_photo_url = url_article17
article17.save!
