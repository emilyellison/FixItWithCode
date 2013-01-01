FixItWithCode::Application.routes.draw do

  root to: 'posts#index'
  
  match '/blog'           => 'posts#index', as: :posts
  match '/blog/posts/:id' => 'posts#show', as: :post
  
  namespace :admin do
    
    root to: 'administrators#index'
    
    resources :administrators, :posts
    resources :sessions, only: [ :new, :create, :destroy ]
    match '/login' => 'sessions#new', :as => :login
    match '/logout' => 'sessions#destroy', :as => :logout
    
  end

end
