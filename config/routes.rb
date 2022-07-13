Rails.application.routes.draw do
  resources :transactions, except: %i[edit destroy update]
  resources :accounts, except: :destroy do
    resources :transactions, except: %i[edit destroy update]
  end


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
   root "accounts#index"
end
