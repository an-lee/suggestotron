Rails.application.routes.draw do
  get 'static_pages/about'

  root 'topics#index'
  resources :topics do
    member do
      post 'upvote'
    end
    member do
      post 'downvote'
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
