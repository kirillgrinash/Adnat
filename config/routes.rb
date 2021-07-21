Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/organisations" => "organisations#index"
    post "/organisations" => "organisations#create"
    get "/organisations/:id" => "organisations#show"
    put "/organisations/:id" => "organisations#update"
  end
end
