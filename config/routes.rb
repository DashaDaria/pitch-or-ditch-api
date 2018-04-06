Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    resources :ideas, only: [:index, :show, :update, :destroy]

    resources :categories, only: [:index, :show] do
      resources :ideas, only: [:index, :create], controller: 'categories/ideas'
    end
  end
end
