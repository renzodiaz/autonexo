# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name  : 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Navigation.create([{name: 'Dashboard', controller: '/dashboard', priority: 1},
                   {name: 'Vehicles', controller: '/dashboard/vehicles', priority: 2},
                   {name: 'Dealers' , controller: '/dashboard/dealers', priority: 3}
                  ])
p "Created #{Navigation.count} Items"