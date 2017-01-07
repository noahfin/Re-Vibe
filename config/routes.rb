Rails.application.routes.draw do
  resources :action_steps
  resources :actions
  resources :goals
  post 'authenticate', to: 'authentication#authenticate'
end
