Rails.application.routes.draw do
  root to: 'books#index'
  get '/search', to: 'books#search'
  get '/search', to: 'books#index'
end
