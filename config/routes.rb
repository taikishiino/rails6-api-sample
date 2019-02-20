Rails.application.routes.draw do
  post "/graphql", to: "graphql#execute"
  devise_for :blogs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
