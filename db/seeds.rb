# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

favores = [
  { latitude: 10.0112, longitude: 90.1032, seed: true , origin: 0 },
  { latitude: 11.0112, longitude: 91.1032, seed: false , origin: 1 },
  { latitude: 12.0112, longitude: 92.1032, seed: false , origin: 2}
]

favores.each do |favor|
  Favor.create favor
end
