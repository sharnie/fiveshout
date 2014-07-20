Rails.application.routes.draw do
  devise_for :users, :controllers => { :registrations => "registrations" }
  resources :shouts
  root "welcome#index"
end
