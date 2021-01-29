Rails.application.routes.draw do
  devise_for :users
  resources :posts
  root 'pages#home'
  get 'gimm', to: 'gimm#homegimm'
  get 'gef', to: 'gef#homegef'
  get 'miviobgef', to: 'gef#mivigef'
  get 'miviobgimm', to: 'gimm#mivigimm'
end
