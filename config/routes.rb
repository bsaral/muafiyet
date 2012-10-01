Exam::Application.routes.draw do

  get "sessions/new"
  match "deneme" => "deneme#index" ,:as => "deneme"
  root :to=>"home#index"
  get "login" => "sessions#new", :as => "login"
  match "logout" => "sessions#destroy"
  resources :sessions
  

 
end
