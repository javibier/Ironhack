# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
ih = Project.create(name: 'Ironhack', description: 'Coding Bootcamp')

Project.create(name: 'Time tracking app')

re = Project.create(name: 'Recipes', description: 'Track my favorite recipes')

he = Project.create(name: 'Hemp', description: 'Track my favorite uses of Hemp')

ho = Project.create(name: 'Home', description: 'Where the heart is')

ca = Project.create(name: 'Cars', description: 'I would love to restore old cars')

Project.create(name: 'Seltzer Water', description: 'The benefits of drinking seltzer water')

Project.create(name: 'Travel', description: 'Track my favorite places to travel')

Project.create(name: 'Dinner', description: 'Track my favorite restaurants')

Project.create(name: 'Movies', description: 'Track my favorite movies')

ih.time_entries.create(hours: 1, minutes: 32)

re.time_entries.create(hours: 1, minutes: 32)

he.time_entries.create(hours: 1, minutes: 32)

ho.time_entries.create(hours: 1, minutes: 32)

ca.time_entries.create(hours: 1, minutes: 32)