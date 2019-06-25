Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # NEW
  get 'rollercoasters/new', to: "rollercoasters#new", as: "new_rollercoaster"
  # INDEX
  get '/rollercoasters', to: "rollercoasters#index"
  # CREATE
  post '/rollercoasters', to: "rollercoasters#create"
  # EDIT
  get '/rollercoasters/:id/edit', to: "rollercoasters#edit"
  # UPDATE
  patch '/rollercoasters/:id', to: "rollercoasters#update", as: "rollercoaster"

  get '/riders/new', to: "riders#new"

  get '/riders/:id', to: "riders#show", as: "rider"

  post '/riders', to: "riders#create"
  
end
