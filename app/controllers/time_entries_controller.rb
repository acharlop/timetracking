class TimeEntriesController < ApplicationController
	def index
		@project = Project.by_id(params[:project_id])
		@entries = @project.time_entries
	end
end
