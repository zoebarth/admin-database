Rails.application.routes.draw do
  devise_for :admins

  devise_scope :admin do 
    get '/admins/sign_out' => 'devise/sessions#destroy'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'bodies#index'

  resources :bodies, :fishes
end
