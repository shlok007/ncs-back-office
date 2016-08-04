Rails.application.routes.draw do
  namespace :admin do
    resources :users
    resources :events
    resources :students
    resources :registrations
    root to: "users#index"
  end
  devise_for :users
  root 'admin/events#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
