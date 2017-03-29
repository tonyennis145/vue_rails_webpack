Rails.application.routes.draw do
  devise_for :users
  root "site#index"

  namespace :api do
    namespace :v1, as: 'v1' do
      resources :financial_transactions
    end
  end

end