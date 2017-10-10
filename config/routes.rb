Rails.application.routes.draw do
  devise_for :users
  root "site#index"

  namespace :api do
 	resources :docs, only: :index
    namespace :v1, as: 'v1' do
      resources :resources
    end
  end

end