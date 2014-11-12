# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Vehicle.create(plate: "MYL-6222", car_model: "Doblo", description: "Amplo espaço interno", capacity: 8)
Vehicle.create(plate: "MNL-6423", car_model: "L200", description: "Caminhonete", capacity: 2)
Driver.create(name: "João")
