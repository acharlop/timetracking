class TimeEntry < ActiveRecord::Base
	validates :hours, presence: true
	validates :minutes, presence: true
	validates :date, presence: true
	belongs_to :project
end
