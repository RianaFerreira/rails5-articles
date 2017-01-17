# http://edgeguides.rubyonrails.org/routing.html
Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }

  get 'welcome/index'

  resources :articles

  root 'welcome#index'
end
