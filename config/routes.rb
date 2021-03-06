Rails.application.routes.draw do

  root to: 'pages#home'
  get '/contact', to: 'pages#contact'
  # get '/extra-information', to: 'pages#extra_information'

  resource :services, only: [:show]

  resource :portfolio, only: [:show] do
    get '/projects/:title', to: 'projects#show', as: :project
  end

  resource :about, only: [:show]

end
