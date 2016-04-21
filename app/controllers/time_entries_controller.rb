class TimeEntriesController < ApplicationController
	def index
		@project = Project.by_id(params[:project_id])
		@entries = @project.time_entries
	end

	def new
		@project = Project.by_id params[:project_id]
		@entry = @project.time_entries.new
	end
	def create
		@project = Project.by_id params[:project_id]
		@entry = @project.time_entries.new(entry_params)

		if @entry.save
			flash[:notice] = "Entry created successfully"
			redirect_to action: "index", controller: "time_entries", project_id: @project.id
		else
			flash[:alert] = "** Error creating entry **"
			render "new"
		end
	end


	def edit
		@project = Project.find params[:project_id]
		@entry = @project.time_entries.find params[:id]
	end

	def update
		@project = Project.by_id params[:project_id]
		@entry = @project.time_entries.find params[:id]
		
		if @entry.update(entry_params)
			flash[:notice] = "Entry updated successfully"
			redirect_to action: "index", controller: "time_entries", project_id: @project.id
		else
			flash[:alert] = "Error updating entry"
			render "edit"
		end
	end

	private

	def entry_params
		params.require(:time_entry).permit(:hours, :minutes, :date, :comment)
	end

end
