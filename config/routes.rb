Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  #get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  get '/survey/:id', to: 'survey#show'
  post '/survey/:id', to: 'survey#create_feedback'

  #Router redirection that responds to all requests coming to the home page and outside the home page
  get '/', to: 'survey#home'
  match '*path', to: 'survey#home', via: :all
 
end
