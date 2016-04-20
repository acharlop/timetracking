Rails.application.routes.draw do
  # my added stuff
  get "/", to: "site#home"
  get "/projects" => "projects#index"

  get "/projects/new" => "projects#new"
  post "/projects" => "projects#create"

  # must be at the bottom
  get "/projects/:id" => "projects#show"
  get "/projects/:project_id/time_entries" => "time_entries#index"

end
