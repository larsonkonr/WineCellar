# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Category.create!(name: "Cabernet Sauvignon")
Category.create!(name: "Pinot Noir")
Category.create!(name: "Syrah")
Category.create!(name: "Merlot")
Category.create!(name: "Chardonnay")
Category.create!(name: "Sauvignon Blanc")
Category.create!(name: "Riesling")
Category.create!(name: "Gewürztraminer")
title = %w( Domaine Skouras St. George Domaine Skouras St. George Coltibuono Cetamura Casamatta Valle Reale Vigneto Vigne Nuove Montepulciano d'Abruzzo d'Arenberg The Stump Jump)
descriptions = %w( ANGULAR ACIDITY AUSTERE BARNYARD TOASTY UNOAKED OPULENT LASER-LIKE)
style = ["Cabernet Sauvignon", "Pinot Noir", "Syrah", "Merlot", "Chardonnay", "Sauvignon Blanc", "Riesling", "Gewürztraminer"]
regions = %w( Nova\ Scotia Chile California Oregon Tuscany Montefalco Moldova)
100.times do
  Item.create!(
  title: title.sample + " " + title.sample + " " + title.sample,
  description: descriptions.sample,
  price: rand(11.5...176.9).round(2),
  style: style.sample,
  region: regions.sample
  )
end
