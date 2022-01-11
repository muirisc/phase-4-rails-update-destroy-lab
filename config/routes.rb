Rails.application.routes.draw do
  resources :plants, only: [:index, :show, :create, :update]
  get "/plants", to: "plants#index"
  get "/plants/:id", to: "plants#show"
  patch "/plants/:id", to: "plants#update"
  delete "/plants/:id", to: "plants#delete"
end
