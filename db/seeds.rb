# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'faker'

Space.create({
  title: "Le Dindon en Laisse",
  address: "18 Rue Beautreillis, 75004 Paris, France",
  availability: true,
  price_per_day: 20,
  nb_of_pers: 5,
  description: "trop bien",
  equipements: "Kitchen",
  type_of_space: "Standing"
})

Space.create({
  title: "Le Dindon des villes",
  address: "18 le chemin, 75004 Paris, France",
  availability: true,
  price_per_day: 20,
  nb_of_pers: 5,
  description: "Yeahhh bien",
  equipements: "Kitchen",
  type_of_space: "Standing"
})

Space.create({
  title: "Neuf et Voisins",
  address: "Van Arteveldestraat 1, 1000 Brussels, Belgium",
  availability: true,
  price_per_day: 30,
  nb_of_pers: 6,
  description: "Degeulasse mais ça passe",
  equipements: "Kitchen",
  type_of_space: "Standing"
})

Space.create({
  title: "Le chenil",
  address: "Van Arteveldestraat 98, 2500, Belgium",
  availability: true,
  price_per_day: 30,
  nb_of_pers: 6,
  description: "La belgique, c'est Merdique",
  equipements: "Kitchen",
  type_of_space: "Standing"
})

Space.create({
  title: "Les pouillus",
  address: "Van Arteveldestraat 2, 2500 Brussels, Belgium",
  availability: true,
  price_per_day: 30,
  nb_of_pers: 6,
  description: "La belgique, c'est naze",
  equipements: "Kitchen",
  type_of_space: "Standing"
})

Space.create({
  title: "Salut les copains",
  address: "Van Arteveldestraat 1, 2000 Brussels, Belgium",
  availability: true,
  price_per_day: 30,
  nb_of_pers: 6,
  description: "Merdique",
  equipements: "Kitchen",
  type_of_space: "Standing"
})

Space.create({
  title: "Chez Jeannot",
  address: "Van Arteveldestraat 1, 2000 Luc, Belgium",
  availability: true,
  price_per_day: 30,
  nb_of_pers: 6,
  description: "Merdique",
  equipements: "Kitchen",
  type_of_space: "Standing"
})


Space = [
  {
    title: "Old Fashioned",
    foto: "http://www.seriouseats.com/images/2014/11/20141104-cocktail-party-old-fashioneds-holiday-vicky-wasik-3.jpg"
    },
  {
    title: "Daiquiri",
    foto: "http://www.seriouseats.com/images/2015/03/20150323-cocktails-vicky-wasik-daiquiri.jpg"
    },
  {
    title: "Margarita",
    foto: "http://www.seriouseats.com/images/2015/03/20150323-cocktails-vicky-wasik-margarita.jpg"
    },
  {
    title: "Sidecar",
    foto: "http://www.seriouseats.com/images/2014/11/20141101-cognac-sidecar-carey-jones.jpg"
    }
  ]

Space.create({
  title: "Chez les bretons",
  address: "Quimper",
  availability: true,
  price_per_day: 30,
  nb_of_pers: 6,
  description: "On mange toujours bien chez nos amis Bretons",
  equipements: "Kitchen",
  type_of_space: "Standing"
})

10.times do

  user = User.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    username: Faker::Internet.user_name,
    password: Devise.friendly_token[0,20],
    picture: Faker::Avatar.image("my-own-slug", "150x150")
  )
  reservation = Reservation.create(
    space: Space.find(rand(1..4)),
    user: user,
    start_date: DateTime.parse("09/01/2016 17:00"),
    end_date: DateTime.parse("10/01/2016 17:00"),
    review: Faker::Lorem.sentence,
    total_price: Faker::Number.between(60, 400)
  )
end



>>>>>>> master
