class TodoItem < ActiveRecord::Base
	def self.completed_items
		return TodoItem.where(completed:true).count
	end
end
