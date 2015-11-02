Rails.application.routes.draw do
  resources :students
  resources :teachers
  root 'pages#home'
end
