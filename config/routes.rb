Rails.application.routes.draw do
  resources :goals
  post 'authenticate', to: 'authentication#authenticate'
end
