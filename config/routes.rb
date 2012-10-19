Exam::Application.routes.draw do

  root :to=>"home#index"	
  
  get "sessions/new"
  get "login" => "sessions#new", :as => "login"
  match "logout" => "sessions#destroy"
  resources :sessions
  
  resources :ankets
  match "anket" => "ankets#index" ,:as => "anket"
  match "ankets/:id" => "ankets#show" ,:as => "show"
  match "admin" => "ankets#admin" ,:as => "admin"
  
  
  

 
end
