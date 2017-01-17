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

d1 = Driver.create({team_id: t1.id, name: 'Stirling Moss'})
d2 = Driver.create({team_id: t1.id, name: 'Derek Bell'})
d3 = Driver.create({team_id: t2.id, name: 'Ayrton Senna'})
d4 = Driver.create({team_id: t2.id, name: 'Colin McRae'})

Track.delete_all
tr1 = Track.create({name: 'Silverstone', location: 'UK'})
tr2 = Track.create({name: 'Nurberg Ring', location: 'Germany'})

Race.delete_all
Race.create({date: '2017-01-01', driver_id: d1.id, track_id: tr1.id})
Race.create({date: '2017-02-01', driver_id: d2.id, track_id: tr2.id})



