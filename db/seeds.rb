# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#test 

wiz = Concert.new(artist: "wiz khalifa", city: "Miami", date:"11", venue: "american airlines arena", price: "120", description: "Going to be a great show")

wiz.save 
