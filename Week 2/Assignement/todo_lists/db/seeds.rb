# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.destroy_all
Profile.destroy_all
TodoList.destroy_all
TodoItem.destroy_all

users_list = ["cfiorina","dtrump","bcarson","hclinton"]
ul_length = user_list.length

for i in 0..ul_length
	User.create {username: users_list[i], password_digest: "12345"+i.to_s}
end

Profile.create[
	{gender: "F", birth_year: 1954, first_name: "Carly", last_name: "Fiorina"},
	{gender: "M", birth_year: 1946, first_name: "Donald", last_name: "Trump"},
	{gender: "M", birth_year: 1951, first_name: "Ben", last_name: "Carson"},
	{gender: "F", birth_year: 1947, first_name: "Hilary", last_name: "Clinton"}
]