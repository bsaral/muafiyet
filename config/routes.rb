Exam::Application.routes.draw do

  resources :ankets

  get "sessions/new"
  match "deneme" => "deneme#index" ,:as => "deneme"
  root :to=>"home#index"
  get "login" => "sessions#new", :as => "login"
  match "logout" => "sessions#destroy"
  resources :sessions
  match "anket" => "ankets#new" ,:as => "anket"
  

 
end
