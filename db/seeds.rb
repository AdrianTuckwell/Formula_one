# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Driver.delete_all

d1 = Driver.create({name: 'Stirling Moss'})
d2 = Driver.create({name: 'Derek Bell'})
d3 = Driver.create({name: 'Ayrton Senna'})
d4 = Driver.create({name: 'Colin McRae'})

Team.delete_all

Team.create({driver_id: d1.id, name: "Lotus"})
Team.create({driver_id: d2.id, name: "Lotus"})
Team.create({driver_id: d3.id, name: "Ferarri"})
Team.create({driver_id: d1.id, name: "Ferrari"})