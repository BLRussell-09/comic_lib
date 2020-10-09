Rails.application.routes.draw do
  get 'welcome/index'

  resources :comics do
    resources :author_comics, :artist_comics
  end

  resources :npc do
    get '/random' => 'npc#random'
  end
  root 'welcome#index'
end
