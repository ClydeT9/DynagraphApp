Rails.application.routes.draw do
  root :to => 'pages#home'

  resources :posts
  resources :pages
  resources :contacts, only: [:new, :create]
  get "/pages/:page" => "pages#show"
  get '/index' => 'posts#index'
  get "/solutions/:page" => "solutions#show"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end