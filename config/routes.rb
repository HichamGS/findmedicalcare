Rails.application.routes.draw do
  if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/graphql"
  end
  post "/graphql", to: "graphql#execute"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get '/scrap/:type/:city', to: 'crawler#scrap'
  # get '/scrap/:type/:city/:page', to: 'crawler#scrap'

end
