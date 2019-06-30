Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'

  resources :documents

  authenticated :user do
    root 'documents#index'
  end

  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
