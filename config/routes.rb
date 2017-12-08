Rails.application.routes.draw do

  # namespace :admin do
  #   devise_for :users
  #   resource :dashboard

  #   resources :projects, except: [:show]
  #   resources :services, except: [:show]
  #   resources :blogs, except: [:show]
  #   resources :abouts, except: [:show]

  # end


  root to: 'pages#home'
  get '/contact', to: 'pages#contact'
  resource :services, only: [:show]

  resource :portfolio, only: [:show] do
    get '/projects/:title', to: 'projects#show', as: :project
  end

  resource :about, only: [:show]

end
