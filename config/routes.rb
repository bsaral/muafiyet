Exam::Application.routes.draw do

  root :to=>"home#index"
  	
  resources :sessions
  get "sessions/new"
  get "login" => "sessions#new", :as => "login"
  match "logout" => "sessions#destroy"
  match "update" => "sessions#update"
  
  
  
  resources :ankets
  match "anket" => "ankets#index" ,:as => "anket"
  match "ankets/:id" => "ankets#show" ,:as => "show"
  match "show_sec" => "ankets#show_sec" 
  match "admin" => "ankets#admin" ,:as => "admin"
  match "finish" => "ankets#finish" ,:as => "finish"
  match "finish_sec" => "ankets#finish_sec" ,:as => "finish_sec"
  match "dagitim" => "ankets#dagitim" ,:as => "dagitim"
  match "kimlik" => "ankets#kimlik" ,:as => "kimlik"
  
  resources :passwords
  match "password" => "passwords#new" 
  
  
 
end
