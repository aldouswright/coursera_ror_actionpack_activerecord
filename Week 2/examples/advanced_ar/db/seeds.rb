# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Person.destroy_all

Person.create! [
	{first_name: "Kalman", last_name:"Smith", age:33},
	{first_name: "Oscar", last_name:"Wilde", age:30},
	{first_name: "Cloud", last_name:"Strife", age:32},
	{first_name: "Naseem", last_name:"Taleb", age:40},
	{first_name: "Immanuel", last_name:"Kant", age:42},
	{first_name: "Bertrand", last_name:"Russel", age:45},
	{first_name: "Jack", last_name:"Dorsey", age:36},
	{first_name: "Patrick", last_name:"Chiuco", age:25},
]
