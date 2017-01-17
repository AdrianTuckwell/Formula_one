# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Team.delete_all

t1 = Team.create({name: "Lotus"})
t2 = Team.create({name: "Ferarri"})

Driver.delete_all

Driver.create({team_id: t1.id, name: 'Stirling Moss'})
Driver.create({team_id: t1.id, name: 'Derek Bell'})
Driver.create({team_id: t2.id, name: 'Ayrton Senna'})
Driver.create({team_id: t2.id, name: 'Colin McRae'})

