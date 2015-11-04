Rails.application.routes.draw do
  resources :articles
  
  root to: "articles#index", as: :g_root
  
end
