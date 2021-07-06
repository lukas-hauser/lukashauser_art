Rails.application.routes.draw do
  root 'html_pages#home'
  get '/home',          to: 'html_pages#home'
  get '/about',         to: 'html_pages#about'
  get '/contact',       to: 'html_pages#contact'
  get '/cookiepolicy',  to: 'html_pages#cookiepolicy'
  get '/privacypolicy', to: 'html_pages#privacypolicy'
  get '/terms',         to: 'html_pages#terms'
  get '/blog',          to: 'blogposts#index'
  resources :blogposts, only: %i[show index]
  resources :artworks,  only: %i[show index]
  get '/paintings',     to: 'artworks#paintings'
  get '/photography',   to: 'artworks#photography'
  get '/digitalart',    to: 'artworks#digital_art'
end
