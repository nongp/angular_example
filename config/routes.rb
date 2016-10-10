Rails.application.routes.draw do
  root 'dashboard#index'

  namespace :api do
    resources :events, only: [:index, :create] do
      collection do
        get :search
      end
    end
  end
end
