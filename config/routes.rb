Rails.application.routes.draw do
  # my added stuff
  get "/", to: "site#home"
  get "/projects" => "projects#index"

  get "/projects/new" => "projects#new"
  post "/projects" => "projects#create"

  # must be at the bottom
  get "/projects/:id"                          => "projects#show"
  get "/projects/:project_id/time_entries"     => "time_entries#index"
  get "/projects/:project_id/time_entries/new" => "time_entries#new"
  post "/projects/:project_id/time_entries" => "time_entries#create", as: :project_time_entries

end
