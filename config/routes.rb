Rails.application.routes.draw do
  resources :characterlines
  get 'index'=>'epicenter#index'
  get 'myprojects' =>'epicenter#myprojects'
  get 'about'=>'epicenter#about'
  resources :projects
  devise_for :users

  root 'epicenter#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
