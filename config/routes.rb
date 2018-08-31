Rails.application.routes.draw do
  get 'reviews/new'
  get 'reviews/create'
  resources :restaurants do
    collection do
      get "top", to: "restaurants#top"
    end
    member do
      get "chef", to: "restaurants#chef"
    end
    resources :reviews, only: [:new, :create]
  end
end
