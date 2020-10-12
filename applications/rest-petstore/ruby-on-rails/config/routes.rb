Rails.application.routes.draw do
    resources :pets, path: 'pet'
    resources :categories
end
