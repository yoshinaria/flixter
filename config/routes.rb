Flixter::Application.routes.draw do
  devise_for :users
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'static_pages#index'
  resources :courses, :only => [:index, :show]

  namespace :instructor do
    resources :sections, :only => [] do
      resources :lessons, :only => [:new, :create]
    end
    resources :courses, :only => [:new, :create, :show] do
      resources :sections, :only => [:new, :create]
    end
  end
end
