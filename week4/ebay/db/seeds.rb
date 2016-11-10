# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user1 = User.create(name: 'Astryth Arenas', address: 'Calle 51 No. 47, Rionegro Colombia', phone: '5743182299', email: 'Astryth1020@hotmail.com')
user2 = User.create(name: 'Randy Echevarria', address: '325 S. Biscayne Blvd. Miami, Fl 33157', phone: '305-495-3905', email: 'Randy@hotmail.com')
user3 = User.create(name: '101 Vapor and Smoke Shop', address: '10100 NW 27th Ave. Miami, Fl 33101', phone: '305-495-3905', email: '101Smokeandvapor@hotmail.com')
user4 = User.create(name: 'Richard Echevarria', address: '24500 Glenview Drive, Glendale, California', phone: '818-123-9876', email: 'RichardE@hotmail.com')
user5 = User.create(name: 'David Echevarria', address: '19500 Caribean Blvd. Miami, Florida', phone: '305-333-9999', email: 'davide@hotmail.com')

[user1, user2].each do |user|
	5.times do |i|
		user.products <<




# AA1.products.create(title: 'shoes', description: 'Versace black pumps size 6', deadline: '12 hours')
# AA1.products.create(title: 'belt', description: 'Versace black size 6', deadline: '12 hours')
# RE1.products.create(title: 'game', description: 'World of Warcraft', deadline: '12 hours')
# VA1.products.create(title: 'water pipe', description: 'Rocketeer green rig', deadline: '12 hours')
# VA1.products.create(title: 'lighter', description: 'Bics', deadline: '12 hours')
# RE1.products.create(title: 'tv', description: 'Samsung 47 LED', deadline: '12 hours')
# DE1.products.create(title: 'sofa', description: 'Baige like new 12 foot long', deadline: '12 hours')