Rails.application.routes.draw do

  namespace :admin do
    devise_for :users
    resource :dashboard

    resources :projects, except: [:show]
    resources :services, except: [:show]
    resources :blogs, except: [:show]
    resources :abouts, except: [:show]

  end


  root to: 'pages#home'

  resource :services, only: [:show] do
    get 'mvp', to: 'services#mvp'
    get 'workshops', to: 'services#workshops'
    get 'sprints', to: 'services#sprints'
  end

  resource :portfolio, only: [:show] do
    resources :projects, only: [:index]
    get '/projects/:title', to: 'projects#show'
    resources :partnerships, only: [:index]
  end

  resource :about, only: [:show] do
    resources :blog, except: [:show]
    get '/blog/:publishing_date', to: 'blogs#show'
    get 'contact', to: 'abouts#contact'
    get 'method', to: 'abouts#method'
  end


end
