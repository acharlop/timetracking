Rails.application.routes.draw do
  # my added stuff
  get "/", to: "site#home"
   resources :projects, only: [:index, :show, :new, :create] do
    resources :time_entries, except: [:show]
  end
end
