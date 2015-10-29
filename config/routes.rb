Rails.application.routes.draw do
  resources :teachers
  root 'pages#home'
end
