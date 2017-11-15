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
  get '/contact', to: 'pages#contact'
  resource :services, only: [:show] do
    get 'mvp', to: 'services#mvp'
    get 'workshops', to: 'services#workshops'
    get 'sprints', to: 'services#sprints'
  end

  resource :portfolio, only: [:show] do
    resources :projects, only: [:index]
    get '/projects/:title', to: 'projects#show', as: :project
    resources :partnerships, only: [:index]
  end

  resource :about, only: [:show] do
    resources :blog, only: [:index]
    get '/blog/:publishing_date', to: 'blog#show'
    get 'method', to: 'abouts#workmethod'
  end


end
