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

User.create! [
	{username: "Fiorina", password_digest: "12345"},
	{username: "Trump", password_digest: "54321"},
	{username: "Carson", password_digest: "67890"},
	{username: "Clinton", password_digest: "09876"}
]

cfiorina = User.where(username:"Fiorina")
dtrump = User.where(username:"Trump")
bcarson = User.where(username:"Carson")
hclinton = User.where(username:"Clinton")

Profile.create! [
	{gender: "female", first_name: "Carly", last_name:"Fiorina", birth_year: 1954, user: cfiorina[0]},
	{gender: "male", first_name: "Donald", last_name:"Trump", birth_year: 1946, user: dtrump[0]},	
	{gender: "male", first_name: "Ben", last_name:"Carson", birth_year: 1951, user: bcarson[0]},	
	{gender: "female", first_name: "Hillary", last_name:"Clinton", birth_year: 1947, user: hclinton[0]}	
]


user_list = [cfiorina,dtrump,bcarson,hclinton]
for i in 0..user_list.length-1
	nxt_yr = Date.today + 1.year
	curr_user = user_list[i][0]
	tdl = TodoList.create!({list_name: "todo_list_"+curr_user.username, list_due_date: nxt_yr, user: curr_user})
	for i in 0..4
		idx = i + 1
		TodoItem.create!({due_date: nxt_yr, title:curr_user.username+"_todo_item_"+idx.to_s, description: curr_user.username+"'s item No. "+idx.to_s, completed:false, todo_list: tdl})
	end
end
