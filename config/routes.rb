FixItWithCode::Application.routes.draw do

  root to: 'posts#index'
  
  match '/blog'               => 'posts#index', as: :posts
  match '/blog/posts/:id'     => 'posts#show', as: :post
  match '/about'              => 'administrators#index', as: :administrators
  match '/about/:first_name'  => 'administrators#show', as: :administrator
  
  namespace :admin do
    
    root to: 'posts#index'
    
    resources :administrators, :posts
    resources :sessions, only: [ :new, :create, :destroy ]
    match '/login' => 'sessions#new', :as => :login
    match '/logout' => 'sessions#destroy', :as => :logout
    
  end

end
