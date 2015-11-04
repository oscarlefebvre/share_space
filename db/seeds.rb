# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Space.create!({
  title: "Le Dindon en Laisse",
  address: "18 Rue Beautreillis, 75004 Paris, France",
  availability: true,
  price_per_day: 20,
  nb_of_pers: 5,
  description: "trop bien",
  equipements: "Kitchen",
  type_of_space: "Standing"
})

Space.create!({
  title: "Neuf et Voisins",
  address: "Van Arteveldestraat 1, 1000 Brussels, Belgium",
  availability: true,
  price_per_day: 30,
  nb_of_pers: 6,
  description: "trop bien",
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
