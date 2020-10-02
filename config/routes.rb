Rails.application.routes.draw do
  get 'welcome/index'

  resources :comics

  root 'welcome#index'
end
