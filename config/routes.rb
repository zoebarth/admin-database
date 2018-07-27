Rails.application.routes.draw do
  devise_for :admins, :skip => [:registrations] 

  devise_scope :admin do 
    get '/admins/sign_out' => 'devise/sessions#destroy'
  end

  namespace :api do
    resources :bodies, :fishes, :only => [:index]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'bodies#index'
  
  resources :admins, only: [:index]
  resources :bodies, :fishes
end
