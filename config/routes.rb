FixItWithCode::Application.routes.draw do

  root to: 'posts#index'
  
  match '/blog'                    => 'posts#index', as: :posts
  match '/feed'                    => 'posts#feed', as: :posts_feed, :defaults => { :format => 'atom' }
  match '/blog/posts/:id'          => 'posts#show', as: :post
  match '/about'                   => 'administrators#index', as: :administrators
  match '/about/:first_name'       => 'administrators#show', as: :administrator
  match '/blog/posts/:id/comments' => 'comments#create', as: :comments
  # match '/portfolio'               => 'projects#index', as: :portfolio
  
  namespace :admin do
    
    root to: 'projects#index'
    
    resources :administrators, :posts, :projects
    resources :comments, only: [ :index, :update, :destroy ]
    resources :sessions, only: [ :new, :create, :destroy ]
    match '/login' => 'sessions#new', :as => :login
    match '/logout' => 'sessions#destroy', :as => :logout
    
  end

end
