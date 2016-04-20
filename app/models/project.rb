class Project < ActiveRecord::Base
	def last_created_projects
		self.order(created_at: :desc).limit(10)
	end
end
