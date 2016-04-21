class Project < ActiveRecord::Base
	has_many :time_entries
	scope :by_id, ->(id) { find_by(id: id)}
	validates :name, presence: true, 
						uniqueness: true, 
						length: { maximum: 50 }, 
						format: { with: /\A[\w ]*\z/}#, #allow_blank: false}
# starts with letter then only space alphanumeric

	def self.clean_old
		projects = self.where "updated_at < ?", 1.week.ago
		projects.destroy_all
	end

end
