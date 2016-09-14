# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Concert.create!(artist: 'TonyJ', venue: 'Orlando\'s Covention Center', city: 'Orlando', date: 'September 17, 2016 7:30 p.m.', price: 45 , description: 'TonyJ performing live with DJLito and Endi during the 2016 Florida Zumba convention' )
Concert.create!(artist: 'TonyJ', venue: 'Orlando\'s Fairgrounds', city: 'Orlando', date: 'September 24, 2016 7:30 p.m.', price: 30 , description: 'TonyJ performing his new hit PUMA live' )
Concert.create!(artist: 'Endi', venue: 'American Airlines Arena', city: 'Miami', date: 'September 24, 2016 8:00 p.m.', price: 50 , description: 'Endi performing live with DJLito' )
Concert.create!(artist: 'Endi', venue: 'American Airlines Arena', city: 'Miami', date: 'October 1, 2016 8:00 p.m.', price: 50 , description: 'Endi performing live with DJLito' )
Concert.create!(artist: 'TonyJ', venue: 'American Airlines Arena', city: 'Miami', date: 'October 8, 2016 8:00 p.m.', price: 50 , description: 'TonyJ performing his new hit PUMA live' )
Concert.create!(artist: 'TonyJ', venue: 'Club Space', city: 'Miami', date: 'September 14, 2016 11:59 p.m.', price: 20 , description: 'TonyJ performing his new hit PUMA live' )
