require 'sidekiq/web'

Rails.application.routes.draw do
  if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/graphql"
  end
  post "/graphql", to: "graphql#execute"
  mount Sidekiq::Web => '/sidekiq'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get '/scrap/:type/:city', to: 'crawler#scrap'
  # get '/scrap/:type/:city/:page', to: 'crawler#scrap'

  namespace :api do
    namespace :v1 do
      resources :doctors, only: [:index, :show, :create]
      resources :reviews, only: [:index, :show, :create]
    end
  end
end
