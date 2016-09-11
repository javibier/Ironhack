# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


project1 = Project.create(name: 'Ironhack', description: 'Coding Bootcamp')

project2 = Project.create(name: 'Time tracking app')

project3 = Project.create(name: 'Recipes', description: 'Track my favorite recipes')

project4 = Project.create(name: 'Hemp', description: 'Track my favorite uses of Hemp')

project5 = Project.create(name: 'Home', description: 'Where the heart is')

project6 = Project.create(name: 'Cars', description: 'I would love to restore old cars')

project7 = Project.create(name: 'Seltzer Water', description: 'The benefits of drinking seltzer water')

project8 = Project.create(name: 'Travel', description: 'Track my favorite places to travel')

project9 = Project.create(name: 'Dinner', description: 'Track my favorite restaurants')

project10 = Project.create(name: 'Movies', description: 'Track my favorite movies')

project10.time_entries.create(hours: 1, minutes: 32)

project8.time_entries.create(hours: 1, minutes: 32)

project7.time_entries.create(hours: 1, minutes: 32)

project6.time_entries.create(hours: 1, minutes: 32)

project4.time_entries.create(hours: 1, minutes: 32)