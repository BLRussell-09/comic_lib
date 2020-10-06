Rails.application.routes.draw do
  get 'welcome/index'

  resources :comics do
    resources :author_comics, :artist_comics
  end

  root 'welcome#index'
end
