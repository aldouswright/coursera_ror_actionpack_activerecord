class User < ActiveRecord::Base
	has_secure_password
	has_one :profile, dependent: :destroy
	has_many :todo_lists, dependent: :destroy
	has_many :todo_items, dependent: :destroy, source: :todo_items, through: :todo_lists
	validates :username, presence: true

	def get_completed_count
		total_done = 0
		usr_id = id
		tdl_list = TodoList.where(user_id:usr_id)
		for i in 0..tdl_list.length-1
			curr_id = tdl_list[i].id
			total_done += TodoItem.where({todo_list_id: curr_id, completed: true}).count()
		end
		return total_done
	end
end
