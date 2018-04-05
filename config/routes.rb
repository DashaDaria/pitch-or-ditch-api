Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

namespace :api do
  resources :ideas, except: [:new, :edit]
end

namespace :api do
  resources :categories, only: [:index, :show] do
    resources :ideas, only: [:show]
  end
end

end
