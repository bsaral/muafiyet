Exam::Application.routes.draw do

  root :to=>"home#index"	
  
  get "sessions/new"
  get "login" => "sessions#new", :as => "login"
  match "logout" => "sessions#destroy"
  resources :sessions
  
  resources :ankets
  match "anket" => "ankets#new" ,:as => "anket"
  

 
end
